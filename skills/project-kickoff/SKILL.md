---
name: project-kickoff
description: >
  Guides the instantiation of the Project Start Kit into a real project.
  Use this skill whenever a new project idea is being defined, a project brief needs to be created,
  or the starter kit needs to be filled with real project content.
  Triggers: "new project", "project idea", "start a project", "instantiate", "kickoff",
  "fill in the starter kit", "I have a project idea", "let's build something",
  "proje fikrim var", "yeni proje", "projeye başlayalım", or any context where
  the user is describing a product/tool/app they want to build and the repository
  is still in starter kit mode.
  This skill runs a two-phase process: first an interview to understand the project,
  then automated updates to all relevant repository files.
---

# Project Kickoff Skill

This skill transforms the Project Start Kit from an empty scaffold into a real project repository.
It works in two phases: first understand the project through conversation, then write all the files.

Both Claude and Codex can use this skill. The output is deterministic — given the same project information, either tool should produce equivalent results because the skill defines exactly which files get updated and how.

## When to Use

Use this skill when:
- The user has a new project idea and the repository is still in starter kit mode
- `PROJECT-BRIEF.md` still contains placeholder text
- The user wants to "instantiate" or "kick off" the starter kit

Do not use this skill when:
- The project is already instantiated (check `PROJECT-BRIEF.md` for real content)
- The user is working on an existing task within an active project
- The user only wants to update one specific file

## Phase 1: Interview

The goal is to collect enough information to fill `PROJECT-BRIEF.md` and derive all other files from it.

### Step 1: Get the Brain Dump

Start with an open-ended prompt. Do not start with a list of 15 questions. Ask the user to describe their project idea freely — even a few sentences is enough to start.

Example opening:
> "Projenizi / fikrinizi anlatın. Birkaç cümle bile olsa yeterli — detayları sonra birlikte tamamlarız."

Or in English:
> "Tell me about your project idea. Even a few sentences is enough — we'll fill in the details together."

Match the user's language. If they write in Turkish, continue in Turkish. If English, continue in English.

### Step 2: Gap Analysis

After receiving the brain dump, map what the user said against the required fields in `PROJECT-BRIEF.md`:

**Required fields (instantiation cannot proceed without these):**
- Project name
- Problem statement
- Target users
- Value proposition
- Core features (at least 3)
- Primary user flows (at least 1)
- Technical direction (platform at minimum)
- Roadmap (at least Phase 1)

**Important but can be TBD:**
- Success criteria
- Competitive landscape (direct competitors, indirect alternatives, differentiation, links)
- Deployment details
- Detailed tech stack
- Constraints
- Non-goals
- Known risks

**Can be left as Open Questions:**
- Data model details
- Auth model
- Third-party integrations
- Scaling approach

Identify which required fields are missing or unclear.

### Step 3: Targeted Questions

Ask about the missing required fields — but not all at once. Group them in batches of 3-4 questions maximum per round. Prioritize the most critical gaps first.

**Important behavior: Offer recommendations when the user is uncertain.**

If the user says "bilmiyorum" / "I don't know" / "emin değilim" / "kararsızım" for any field:
- Do not just write "TBD" and move on
- Analyze what you already know about the project
- Offer a concrete recommendation with reasoning
- Example: "Anlattığın yapıya göre Next.js + Supabase mantıklı olabilir. Sebepleri: hızlı prototipleme, built-in auth, real-time özellikler. Ama son karar senin — farklı bir tercihin varsa onu kullanırız."
- If the user accepts your recommendation, use it. If they reject it, ask what they'd prefer instead.
- If the user still has no preference, then mark it as TBD with a note about the recommendation.

For the competitive landscape, ask something like:
> "Bu alanda bildiğin rakipler veya alternatifler var mı? Kullanıcılar şu an bu problemi nasıl çözüyor?"

If the user names competitors, ask for links if possible — these are valuable reference points. If the user isn't sure, do a quick analysis based on what you know about the space and share your findings. If there are truly no competitors, note that too — it's useful context.

The goal is to be a helpful collaborator, not a passive form-filler. The user is building something — help them think through decisions, not just record answers.

### Step 4: Roadmap Discussion

Once the core project shape is clear, discuss the build order together. This is critical because it determines the first task.

Ask something like:
> "Bu projeyi hangi sırayla inşa etsek mantıklı? Mesela önce veri modeli mi, API mi, UI mı? Yoksa farklı bir yaklaşımın var mı?"

Guide the conversation toward 2-4 high-level phases. Each phase should have:
- A clear name
- A goal (what "done" looks like)
- A scope (what's included)

Common patterns to suggest if the user is unsure:
- **API-first:** Data model → API → Frontend → Auth → Polish
- **UI-first:** Wireframes/UI → Mock data → Backend → Integration → Polish
- **Slice-first:** One complete vertical slice (DB to UI) → Expand features → Polish
- **Prototype-first:** Quick throwaway prototype → Learn → Build real version

Explain the tradeoffs of each approach based on the user's specific project.

### Step 5: Confirm Before Writing

Before moving to Phase 2, present a structured summary of everything you've collected. Map it to the `PROJECT-BRIEF.md` sections. Ask the user to confirm or correct.

Format:
> **Proje Özeti:**
> - Ad: ...
> - Problem: ...
> - Hedef kullanıcı: ...
> - Değer önerisi: ...
> - Ana özellikler: ...
> - Teknik yön: ...
> - Roadmap: Faz 1 → Faz 2 → Faz 3
> - Non-goals: ...
> - Kısıtlar: ...
>
> "Bu özet doğru mu? Değiştirmek veya eklemek istediğin bir şey var mı?"

Do not proceed to Phase 2 until the user explicitly confirms.

## Phase 2: Write Files

Once the user confirms, update files in this exact order. Each file has a specific role — do not mix responsibilities between files.

**Never touch the user's home directory as part of this skill.** This includes
`~/.claude/CLAUDE.md`, `~/.codex/AGENTS.md`, and anything else outside this repository.
`global-templates/` in this repo holds informational copies only — do not sync, install,
or overwrite global config unless the human explicitly asks for that in a separate request.

### File 1: `PROJECT-BRIEF.md`

This is the primary output. Fill the template at `PROJECT-BRIEF.md` in the repository root with all collected information.

Rules:
- Replace all `[PLACEHOLDER]` tokens with real content
- For fields the user marked as undecided, write "TBD" followed by any recommendation that was discussed. Example: "TBD — JWT was recommended during kickoff due to mobile client needs."
- Keep the Revision Log section empty — it's for future use
- Do not add sections that aren't in the template
- Write in the language the user used during the interview

### File 2: `docs/architecture.md`

Derive the technical architecture from the brief. This file answers "how is it built?" — not "why are we building it?"

What to fill:
- Technical Summary (project name, type, tech stack)
- System Overview (high-level architecture description)
- Major Components (frontend, backend, database, auth, integrations — only the ones that apply)
- Core Flows (derived from user flows in the brief, but written as technical flows)
- Key Entities / Data Model (if known, otherwise mark as TBD)
- Architectural Constraints (derived from constraints in the brief)
- Boundaries and Responsibilities (keep the existing defaults, add project-specific ones)
- Risks and Open Questions (technical subset of risks from the brief)

What NOT to put here:
- Project motivation, target users, value proposition (that's in PROJECT-BRIEF.md)
- Build roadmap or phases (that's in PROJECT-BRIEF.md)
- Setup instructions (that's in README.md)

Reference `PROJECT-BRIEF.md` at the top for project context.

### File 3: `README.md`

Replace the starter kit README with a project README. This is the "identity card" — a developer opening this repo should understand what it is and how to work with it in 60 seconds.

Structure:
```
# [Project Name]

[One-line summary from the brief]

For project motivation, roadmap, and non-goals, see `PROJECT-BRIEF.md`.

## Tech Stack
- [list the chosen technologies]

## Getting Started
[Setup instructions — if the project hasn't started yet, write a placeholder:
"Setup instructions will be added once the initial codebase is in place."]

## Project Structure
[Keep the existing folder descriptions from the starter kit, add project-specific notes if relevant]

## Documentation
- `PROJECT-BRIEF.md` — project intent, motivation, roadmap
- `docs/architecture.md` — technical architecture
- `docs/ai-workflow.md` — AI coordination rules
- `docs/validation.md` — completion standards
- `tasks/todo.md` — active task tracking
```

Keep it short. README grows as the project grows.

### File 4: `CLAUDE.md` — Project Context section

Update only the `## Project Context` section. Do not touch any other section.

Replace the starter kit context with a real project summary:
```
## Project Context
[Project name] is [one-line summary].

Target users: [who]
Core problem: [what]
Tech stack: [what]

For full project brief, see `PROJECT-BRIEF.md`.
For technical architecture, see `docs/architecture.md`.
```

Keep it concise — this section is read by Claude before every non-trivial task. It should orient, not explain everything.

### File 5: `AGENTS.md` — Project Context section

Same update as `CLAUDE.md`, same rules. Update only `## Project Context`.

### File 6: `docs/validation.md`

Read the existing file. If the project has specific validation needs (e.g., a specific test framework, linting rules, type checking, browser compatibility), add them under a `## Project-Specific Validation` section.

If no project-specific validation is known yet, do not modify this file.

### File 7: `tasks/todo.md`

Open the first real task. This task should be derived from Phase 1 of the roadmap.

Fill the existing template:
- **Goal:** First concrete deliverable from Phase 1
- **Owner:** Ask the user who should own this (claude / codex / human)
- **Status:** `not started`
- **Priority:** `high`
- **Context:** Reference Phase 1 of `PROJECT-BRIEF.md`
- **Plan:** Break Phase 1's first deliverable into 3-5 concrete steps
- **Next Step:** The very first action to take

### File 8: `tasks/worklog.md`

Append a kickoff entry:
```
## [DATE] — Project Kickoff
- **Actor:** [claude / codex — whoever ran this skill]
- **Task:** Project instantiation
- **Files changed:** PROJECT-BRIEF.md, docs/architecture.md, README.md, CLAUDE.md, AGENTS.md, tasks/todo.md
- **Summary:** Instantiated the Project Start Kit with [project name]. Completed interview, created project brief, derived architecture and README, opened first task.
- **Verification:** All placeholder content in core files replaced with real project content. Instantiation trigger conditions met.
```

## After Completion

When all files are written, present a brief summary to the user:

> "Proje kurulumu tamamlandı. Güncellenen dosyalar:
> - `PROJECT-BRIEF.md` — proje niyeti ve roadmap
> - `docs/architecture.md` — teknik yapı
> - `README.md` — proje kimlik kartı
> - `CLAUDE.md` / `AGENTS.md` — AI bağlamı
> - `tasks/todo.md` — ilk görev açıldı
> - `tasks/worklog.md` — kickoff kaydı
>
> İlk görev: [first task summary]. Başlamak ister misin?"

The repository is now in Project Mode. The instantiation trigger conditions from `PROJECT-START-KIT.md` should all be met.

## Edge Cases

**User provides very little information:**
Do not force answers. Collect what you can, mark the rest as TBD with recommendations, and proceed. A partially filled brief is better than no brief. The user can always come back and update.

**User wants to change something after confirmation:**
Go back to the relevant question, update the answer, re-confirm, then proceed.

**User wants to skip the interview:**
If the user provides a complete brief or PRD document upfront, skip the interview. Map their document to the `PROJECT-BRIEF.md` template, confirm with the user, then proceed to Phase 2.

**User is not sure about technical decisions:**
This is the most common case. Be an active collaborator — recommend based on the project's needs, explain tradeoffs, but never force a choice. Record the recommendation even if the user defers the decision.

**Multiple projects / repos:**
This skill instantiates one project in one repository. If the user has multiple project ideas, ask them to pick one. The others can be instantiated in separate repositories later.
