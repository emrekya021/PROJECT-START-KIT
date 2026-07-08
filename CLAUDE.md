# Project Claude Rules

## Project Context
This repository is a reusable Project Start Kit for AI-assisted software projects.

It provides a consistent structure for:
- project documentation
- AI coordination
- validation standards
- task tracking
- reusable skills

Project-specific content may still be incomplete or written as placeholders.
Do not assume placeholder content is final.
When real project details are added, treat the repository documents as the source of truth.

<!-- After kickoff, replace the block above with the real project summary:
[Project name] is [one-line summary].
Target users: [who] / Core problem: [what] / Tech stack: [what]
For the full brief see PROJECT-BRIEF.md; for architecture see docs/architecture.md. -->

## Session Memory
@tasks/todo.md

## Hard Rules
1. Follow the global Claude rules first, then this file, then `docs/ai-workflow.md` for all process detail. Do not invent process the repo already defines.
2. Read documents by need, not upfront: design-affecting work → `PROJECT-BRIEF.md` + `docs/architecture.md`; finishing → `docs/validation.md`; risky/recurring areas → `tasks/lessons.md`.
3. One active task at a time in `tasks/todo.md`. New ideas go to `tasks/backlog.md` as one line, immediately.
4. Level 2-3 work (per `docs/validation.md`) requires a plan file in `plans/`, referenced from `tasks/todo.md` as `Active plan:`. Level 1 work does not.
5. Folder discipline: before creating any file, follow the folder map in `docs/architecture.md`. Never drop files in the repo root; if a new top-level folder is genuinely needed, update `docs/architecture.md` first.
6. Before marking work done, run the Close-out Checklist in `docs/ai-workflow.md` (worklog, architecture, ADR, lessons, folder check).
7. Never claim completion without verification per `docs/validation.md`; state gaps honestly.
8. Record meaningful work in `tasks/worklog.md` (append-only). A Stop hook will remind you if you forget.
9. If another actor is actively working on the same task or files: stop, note it in `tasks/todo.md`, ask the human.
10. Keep this file and `AGENTS.md` mirrored: any rule change here must be applied to both in the same edit.

## Communication
- For non-trivial work, state the approach before broad changes.
- At the end, summarize: what changed, why, what was verified, blockers.

## Process Reference
All process detail — tiered reading, plans flow, backlog rule, close-out checklist, worklog format, ADR threshold, subagent notes, growth path — lives in `docs/ai-workflow.md`.
