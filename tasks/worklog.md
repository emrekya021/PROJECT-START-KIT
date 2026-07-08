# Work Log

Use this file as the append-only record of meaningful work in this repository.

Do not overwrite history unless fixing an obvious factual error.
Add new entries to the top or bottom consistently.

## Entry Template

### [YYYY-MM-DD HH:MM]
- Actor: [claude / codex / human]
- Task: [SHORT_TASK_NAME]
- Files: [FILE_1], [FILE_2], [FILE_3]
- Summary: [WHAT_WAS_DONE]
- Verification: [WHAT_WAS_CHECKED]
- Blockers / Next: [BLOCKER_OR_NEXT_STEP]

---

### [2026-07-08 18:30]
- Actor: claude
- Task: post-V2 template hygiene audit
- Files: `skills/project-kickoff/SKILL.md`, `.env.example`, `global-templates/AGENTS.md`
- Summary: Full-repo audit (independent auditor agent + manual checks) for template-shipping bugs after V2. Found and fixed: (1) kickoff skill's worklog-entry template didn't match the canonical Worklog Format (## vs ### heading, "Files changed" vs "Files", missing Blockers/Next) — first entry in a fresh clone would have seeded format drift; (2) stale `MCP_ENDPOINT` example removed from .env.example (MCP config lives in tool config layers, not app env); (3) refreshed stale `global-templates/AGENTS.md` copy (title had changed in the real ~/.codex/AGENTS.md). Audit found no other issues: no stale V1 process references, CLAUDE/AGENTS mirror intact, kickoff File 1-9 numbering consistent, no secrets, gitignore correct.
- Verification: auditor re-checks + `diff -q global-templates/AGENTS.md ~/.codex/AGENTS.md` identical; grep for old process terms clean outside archives. Worklog-guard Stop hook also fired live this session and behaved as designed.
- Blockers / Next: none.

---

### [2026-07-08 17:45]
- Actor: claude
- Task: Project Start Kit V2 restructure (plan: `plans/001-project-start-kit-v2.md`)
- Files: `.claude/settings.json` (new), `.claude/hooks/worklog-guard.sh` (new), `plans/README.md` (new), `plans/001-project-start-kit-v2.md` (new), `tasks/backlog.md` (new), `docs/adr/000-template.md` (new), `docs/ai-workflow.md` (rewrite), `CLAUDE.md` (rewrite), `AGENTS.md` (rewrite), `tasks/todo.md`, `docs/architecture.md`, `PROJECT-START-KIT.md`, `README.md`, `skills/project-kickoff/SKILL.md`, `tasks/lessons.md`
- Summary: Restructured the kit for single-AI cross-session memory. Replaced the mandatory 7-doc reading order with tiered/lazy reading; made `docs/ai-workflow.md` the canonical process doc (241→90 lines, multi-AI ceremony removed, close-out checklist added); slimmed CLAUDE.md/AGENTS.md to mirrored 42-line files with `@tasks/todo.md` import (Claude) / explicit read rule (Codex) and a folder-discipline hard rule; added `plansDirectory: ./plans` so plan-mode plans persist in-repo; added `tasks/backlog.md`; added a Stop hook that warns when repo files changed but the worklog wasn't updated (with `stop_hook_active` loop protection); added ADR template; added a required Folder Map section to architecture.md and a folder-map + backlog-seeding step to the kickoff skill.
- Verification: settings.json valid JSON; hook tested in 4 scenarios (dirty-no-worklog → warns; stop_hook_active → silent; worklog touched → silent; clean repo → silent, tested in a scratchpad repo); `wc -l` CLAUDE.md=42, AGENTS.md=42, ai-workflow.md=90; CLAUDE↔AGENTS diff shows only 5 intentional differences; stale-reference grep pending as final step before commit.
- Blockers / Next: Human approval for commit, then backlog item: push as "Project Start Kit V2" to GitHub.

---

### [2026-07-08 16:30]
- Actor: claude
- Task: remove unused `agents/` and `mcp/` directories
- Files: `agents/README.md` (deleted), `mcp/README.md` (deleted), `CLAUDE.md`, `AGENTS.md`, `README.md`, `PROJECT-START-KIT.md`, `docs/ai-workflow.md`, `skills/README.md`, `tasks/todo.md`
- Summary: Removed the `agents/` and `mcp/` folders because they held only READMEs and were never written to by the AI tools — runtime agents live in `.claude/agents/` / `.codex/agents/` and live MCP configuration lives in tool-specific config layers. Both folders were manually-maintained parallel documentation with drift risk. Cleaned all references: structure lists, "Agents and Skills" sections, PROJECT-START-KIT customization list, ai-workflow "Agent Source and Runtime Rule" (renamed to "Agent Runtime Rule", now referencing only runtime dirs), and skills/README's agents pointer.
- Verification: `grep` across all repo markdown confirms no stale `agents/` or `mcp/` references remain (only intentional `.claude/agents/` / `.codex/agents/` runtime references); `git status` shows only the intended deletions and doc edits.
- Blockers / Next: None. If MCP usage notes are needed later, document them under `docs/`.

---

### [2026-07-08 14:00]
- Actor: claude
- Task: add global-templates/ reference copies of global Claude/Codex rules
- Files: `global-templates/CLAUDE.md` (new), `global-templates/AGENTS.md` (new), `global-templates/README.md` (new), `PROJECT-START-KIT.md`, `README.md`, `skills/project-kickoff/SKILL.md`, `tasks/todo.md`
- Summary: Created `global-templates/` holding byte-identical reference copies of `~/.claude/CLAUDE.md` and `~/.codex/AGENTS.md`, plus a README explaining they are informational only and must never be auto-installed into the user's home directory. Updated `PROJECT-START-KIT.md` Global AI Rules section and root `README.md` structure list to reference the folder. Added an explicit non-auto-install guard to `skills/project-kickoff/SKILL.md` so future kickoff runs never write to `~/.claude/` or `~/.codex/` on their own.
- Verification: `diff` confirmed both copies are byte-identical to the real global files; confirmed the real global files' mtimes are unchanged (not touched); `git status` shows only the intended files as modified/added.
- Blockers / Next: None. Follow-up (optional, on request only): re-sync the copies if the operator's real global files change later.

---

## Example Entry

### [2026-04-10 18:30]
- Actor: claude
- Task: starter kit local rules setup
- Files: `CLAUDE.md`, `AGENTS.md`
- Summary: Updated repository-local AI operating rules for starter-kit usage and placeholder-aware project context.
- Verification: Reviewed structure consistency against repo workflow rules. No runtime validation required.
- Blockers / Next: Create `docs/` and `tasks/` starter templates.

---
