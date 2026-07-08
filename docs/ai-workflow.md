# AI Workflow

This is the canonical process document for AI-assisted work in this repository.
`CLAUDE.md` and `AGENTS.md` stay thin and point here; process rules live in this file only.

## Core Principle
The AI forgets everything between sessions. The repository is its memory.
Coordination and continuity happen through repository documents, not hidden context.

The shared memory files are:
- `PROJECT-BRIEF.md` — why the project exists
- `docs/architecture.md` — how the system is built (including the folder map)
- `docs/validation.md` — what "done" means
- `plans/` — durable implementation plans
- `tasks/todo.md` — the single active task
- `tasks/backlog.md` — what comes next
- `tasks/worklog.md` — what happened
- `tasks/lessons.md` — what we learned
- `docs/adr/` — why decisions were made

## Tiered Reading
Do not front-load documents. Read them when the task needs them.

- **Always loaded:** `CLAUDE.md` / `AGENTS.md` (automatic) and `tasks/todo.md` (imported/read at session start).
- **Read on demand:**
  - Design-affecting work → `PROJECT-BRIEF.md` + `docs/architecture.md`
  - Finishing a task → `docs/validation.md`
  - Risky or previously-failed areas → `tasks/lessons.md`
  - Understanding a past decision → `docs/adr/`
- `PROJECT-START-KIT.md` and `README.md` are not per-task reading (instantiation-time and human-facing).

## Plans Flow
- Level 2-3 work (per `docs/validation.md`) gets a plan file in `plans/`; Level 1 work does not.
- Plan-mode plans land in `plans/` automatically (`plansDirectory` in `.claude/settings.json`).
- `tasks/todo.md` points to the current plan via `Active plan:`.
- Finished plans stay in `plans/` as archive.

## Backlog Rule
- Any "let's do this later" idea goes to `tasks/backlog.md` as one line, immediately.
- `tasks/todo.md` holds exactly one active task.
- At task close, propose the next item from the backlog.

## Close-out Checklist
Before marking any task done, answer these five questions:
1. Is the work logged in `tasks/worklog.md`? (a Stop hook guards this)
2. Did system boundaries or flows change? → update `docs/architecture.md`
3. Was a durable technical decision made? → add an ADR (`docs/adr/000-template.md`)
4. Did the user correct a reusable mistake, or did a gotcha surface? → add to `tasks/lessons.md`
5. Are all new files in the right folders per the architecture folder map?

## Worklog Format
Each entry includes: timestamp, actor (`claude` / `codex` / `human`), task, files changed or inspected, summary, verification, blockers/next.

Granularity: one entry per meaningful unit of work — not per tiny edit.
Small task = one entry; larger tasks = milestone entries. Append-only; never rewrite history except to fix an obvious factual error.

## ADR Threshold
Create an ADR when at least two of the following are true:
- the decision affects more than one subsystem
- there was a real alternative worth considering
- a future reader may ask "why was this chosen?"
- the decision outlives the current task
- changing it later would be costly

Routine implementation details belong in the worklog, not ADRs.

## Ownership and Conflict (short form)
- Every active non-trivial task has an `Owner` in `tasks/todo.md` (`claude` / `codex` / `human`).
- If another actor is actively working on the same task or files: stop, note the conflict in `tasks/todo.md`, and ask the human.
- The human is the final authority on priorities and disputes.

## Subagents
- Project rules (`CLAUDE.md`) auto-load for subagents too, and bash/file hooks fire on their tool calls.
- The worklog Stop guard runs on the main agent, which owns task close-out.
- Keep one responsibility per subagent.

## Skills Rule
`skills/` holds reusable workflows. Create a skill when a process has repeated at least twice, or is clearly reusable and multi-step on first appearance. Do not create a skill for one-off tasks.

## Agent Runtime Note
`.claude/agents/` (Claude) and `.codex/agents/` (Codex) are separate runtime layers with different formats. If an agent should exist for both tools, adapt it per tool intentionally — there is no automatic sync.

## Growth Path
When project-specific conventions accumulate (e.g. area-specific rules for auth or billing), put them in project-level `.claude/rules/*.md` with `paths:` frontmatter so they load only when matching files are touched. Do not grow `CLAUDE.md` indefinitely, and note that `@import` loads files in full — it organizes context, it does not save it.

## Validation
Completion standards live in `docs/validation.md`. A task is not done until validation is performed or the gaps are explicitly stated.

## General Rule
Prefer repository truth over memory or guesswork. If documents and reality disagree, update the document or flag the inconsistency.
