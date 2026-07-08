# Project Start Kit V2 — Uygulama Planı

> **For agentic workers:** REQUIRED SUB-SKILL: Use superpowers:executing-plans (inline) to implement this plan task-by-task. Steps use checkbox (`- [ ]`) syntax for tracking.

**Goal:** Kit'i tek-AI hafıza/planlama sistemine dönüştürmek: katmanlı okuma, tek kanonik kural kaynağı, repo-içi planlar, backlog, worklog bekçi hook'u, klasörleme disiplini.

**Architecture:** Kural → mekanizma dönüşümü. CLAUDE.md/AGENTS.md incelir ve aynalanır; docs/ai-workflow.md tek süreç kaynağı olur; plansDirectory + @import + Stop hook "unutma"yı mekanik olarak engeller. Ceremoni iş boyutuyla ölçeklenir (küçük iş = todo+worklog; büyük iş = +plan dosyası).

**Tech Stack:** Markdown, Claude Code ayarları (.claude/settings.json), bash hook betiği.

## Global Kısıtlar
- CLAUDE.md ve AGENTS.md: her biri <200 satır, kural bölümleri birbirinin aynası (yalnızca araç adı/runtime dizini farkı).
- Silinen hiçbir kural bilgi kaybı yaratmayacak: ya ai-workflow.md'ye taşınır ya bilinçli çöpe gider (çoklu-AI seremoni maddeleri).
- Tüm dosyalar İngilizce kalır (kit'in mevcut dili), kullanıcıya dönük README'deki TR/EN kickoff promptları korunur.
- MEMORY.md KULLANILMAZ (operatör kapatmış durumda).
- global-templates/ dokunulmaz (sadece staleness uyarısı kontrol edilir).

---

### Task 1: Plan altyapısı — `.claude/settings.json` + `plans/`

**Files:**
- Create: `.claude/settings.json`
- Create: `plans/README.md`
- (Bu plan dosyası `plans/001-project-start-kit-v2.md` zaten ilk içerik.)

- [x] **Step 1:** `.claude/settings.json` oluştur (dosya yok; `settings.local.json`a dokunma):
```json
{
  "plansDirectory": "./plans"
}
```
- [x] **Step 2:** `plans/README.md` oluştur — içerik: klasörün amacı (onaylanan plan-mode planları otomatik buraya düşer), isimlendirme (`NNN-slug.md` elle yazılanlar için; otomatik düşenler kendi adıyla kalabilir), yaşam döngüsü (aktif plan `tasks/todo.md`den `Active plan:` ile işaret edilir; iş bitince dosya arşiv olarak kalır), ne zaman plan gerekir (validation Level 2-3 işler; Level 1 için gerekmez).
- [x] **Step 3:** Doğrula: `python3 -m json.tool .claude/settings.json` → geçerli JSON.

### Task 2: Kanonik süreç dosyası — `docs/ai-workflow.md` yeniden yazımı

**Files:**
- Modify: `docs/ai-workflow.md` (241 satır → hedef ~120)

- [x] **Step 1:** Şu bölümleri KALDIR: Ownership Precedence, çok maddeli Conflict Rules, Handoff Expectations, sharded-task teaser (satır 30-35), Codex/Claude ayrı rol anlatımı, "Agent Runtime Rule"un uzun hali.
- [x] **Step 2:** Şu bölümleri KORU/GÜNCELLE: dosya amaçları, Update Triggers, Worklog Format + Granularity, ADR Threshold, Skills Rule.
- [x] **Step 3:** Şu YENİ bölümleri ekle:
  - **Tiered Reading:** always = todo.md (CLAUDE.md üzerinden otomatik); on-demand eşleşmeleri (design→BRIEF+architecture, finishing→validation, risky→lessons).
  - **Plans Flow:** plan mode → ./plans/ → todo.md `Active plan:` → bitince arşiv; Level 1 işlerde plan gerekmez.
  - **Backlog Rule:** fikir → backlog.md tek satır; iş kapanışında sıradaki önerilir.
  - **Close-out Checklist (kapanış ritüeli):** 5 soru — worklog yazıldı mı / mimari değişti mi (architecture.md) / kalıcı karar mı (ADR) / ders mi (lessons.md) / dosyalar doğru klasörde mi.
  - **Conflict (kısaltılmış, 3 satır):** aynı dosyada başka aktif iş varsa dur, todo'ya not, insana sor.
  - **Subagent notu (2 satır):** CLAUDE.md ve hook'lar subagent'larda da geçerli; Stop bekçisi ana agent'ta çalışır.
  - **Growth path (kısa):** proje-özel alan kuralları için `.claude/rules/*.md` + `paths:` (proje seviyesi; lazy yüklenir). `@import`un tam yükleme yaptığı notu.
- [x] **Step 4:** Doğrula: `wc -l docs/ai-workflow.md` ≈120; grep ile silinen bölüm başlıklarının kalmadığını kontrol et.

### Task 3: İnce ve aynalı `CLAUDE.md` + `AGENTS.md`

**Files:**
- Modify: `CLAUDE.md` (rewrite)
- Modify: `AGENTS.md` (rewrite, CLAUDE.md'nin aynası)

- [x] **Step 1:** Yeni CLAUDE.md yapısı (~90 satır):
  - Project Context (mevcut, kickoff'ta dolacak)
  - `@tasks/todo.md` importu (todo her oturum otomatik yüklensin)
  - Hard Rules (≤10 madde): katmanlı okuma özeti; plan akışı (Level 2-3 işte plan dosyası + Active plan alanı); backlog kuralı; kapanış checklist'ine uy; **klasörleme disiplini** ("yeni dosya açmadan önce architecture.md'deki klasör haritasına uy; kök dizine dosya atma; yeni üst klasör gerekiyorsa önce architecture.md'yi güncelle"); validation'a bağlılık; dürüst doğrulama beyanı.
  - Pointer: "Süreç detayının tamamı: docs/ai-workflow.md"
- [x] **Step 2:** AGENTS.md'yi aynı içerikle yaz; yalnızca farklar: başlık, `.codex/agents/` referansı, `@import` satırı yerine "read tasks/todo.md at session start" açık kuralı (import sözdizimi Codex'te garantili değil).
- [x] **Step 3:** Doğrula: `wc -l` ikisi de <200; kural bölümlerini diff'le — yalnızca bilinçli farklar.

### Task 4: Worklog bekçi hook'u

**Files:**
- Create: `.claude/hooks/worklog-guard.sh`
- Modify: `.claude/settings.json` (Stop hook kaydı)

- [x] **Step 1:** Betiği yaz:
```bash
#!/bin/bash
# Stop hook: repo değişmiş ama worklog güncellenmemişse Claude'u uyar.
cd "$CLAUDE_PROJECT_DIR" 2>/dev/null || exit 0
changed=$(git status --porcelain 2>/dev/null | grep -v 'tasks/worklog.md' | grep -cv '^$')
worklog_touched=$(git status --porcelain 2>/dev/null | grep -c 'tasks/worklog.md')
if [ "$changed" -gt 0 ] && [ "$worklog_touched" -eq 0 ]; then
  echo '{"decision": "block", "reason": "Repo dosyaları değişti ama tasks/worklog.md güncellenmedi. Anlamlı iş yaptıysan worklog kaydı ekle (docs/ai-workflow.md Worklog Format); önemsiz değişiklikse bu uyarıyı gerekçesiyle geçebilirsin."}'
  exit 0
fi
exit 0
```
- [x] **Step 2:** `chmod +x` ve settings.json'a Stop hook olarak kaydet (update-config skill formatına göre `hooks.Stop`).
- [x] **Step 3:** Test: dummy değişiklik yap → hook'un uyarı verdiğini gör; worklog'a satır ekle → uyarının sustuğunu gör; değişikliği geri al.

### Task 5: `tasks/todo.md` şablon yenileme

**Files:**
- Modify: `tasks/todo.md`

- [x] **Step 1:** Şablona ekle: `Active plan:` alanı (plans/ dosyasına link veya "none — Level 1 task"). `Owner` kalır (claude/codex/human). Aktif görev olarak bu V2 yeniden yapılandırma işini yaz (in progress).
- [x] **Step 2:** Backlog referansı ekle: "Next Step boşsa tasks/backlog.md'den öner."

### Task 6: `docs/adr/000-template.md`

**Files:**
- Create: `docs/adr/000-template.md`

- [x] **Step 1:** Şablon: Title / Status (proposed|accepted|superseded) / Date / Context / Decision / Consequences / Alternatives considered. Kısa doldurma notlarıyla.

### Task 7: Referans güncellemeleri + kickoff skill'i

**Files:**
- Modify: `PROJECT-START-KIT.md`, `README.md`, `skills/README.md`, `skills/project-kickoff/SKILL.md`, `tasks/backlog.md`

- [x] **Step 1:** PROJECT-START-KIT.md: Repository Layers ve customization listesine plans/ + backlog.md ekle; okuma sırası bölümünü katmanlı modele çevir.
- [x] **Step 2:** README.md: Structure listesine plans/, backlog.md, .claude/settings.json ekle.
- [x] **Step 3:** kickoff SKILL.md: (a) Faz 2 dosya listesine backlog.md (roadmap'ten türetilen ilk maddeler) ekle; (b) architecture.md yazım adımına "somut klasör haritası yaz (src/, tests/ vb. — klasörleme disiplini bu haritaya dayanır)" adımı ekle; (c) okuma-sırası referanslarını güncelle.
- [x] **Step 4:** backlog.md'ye ekle: "Gerçek proje kurulunca klasörleme bekçi hook'u ekle (architecture haritasına göre file-event hookify kuralı)".
- [x] **Step 5:** Doğrula: `grep -rn "reading order\|Read.*PROJECT-START-KIT" *.md docs/ skills/` — eski 7-dosya listesi hiçbir yerde kalmamış.

### Task 8: Kapanış — kayıt + doğrulama + commit

**Files:**
- Modify: `tasks/todo.md` (done), `tasks/worklog.md` (kayıt)

- [x] **Step 1:** Worklog kaydı (timestamp, actor: claude, files, summary, verification).
- [x] **Step 2:** Tam doğrulama seti: grep stale referanslar; `wc -l` limitleri; JSON geçerliliği; hook testi sonucu; diff CLAUDE/AGENTS.
- [x] **Step 3:** İnsan onayıyla commit; ardından backlog'daki "V2 olarak GitHub'a push" maddesi için kullanıcıya sor (remote adı/branch — insan kararı).
