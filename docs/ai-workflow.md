# AI Workflow

This file defines how AI-assisted work is coordinated in this repository.

The goal is to keep Claude, Codex, and the human operator aligned through shared repository state instead of hidden context.

## Core Principle
AI tools do not share internal memory with each other.
Coordination happens through repository documents and task records.

The shared operational memory of this repository is:
- `README.md`
- `docs/architecture.md`
- `docs/validation.md`
- `tasks/todo.md`
- `tasks/worklog.md`
- `tasks/lessons.md`
- `docs/adr/`

## Roles

### Human
The human provides direction, priorities, corrections, and final judgment when conflicts or ambiguities matter.

### Claude
Claude follows:
- global `~/.claude/CLAUDE.md`
- project `CLAUDE.md`

Claude should use repository documents instead of guessing and should update shared task records as work progresses.

### Codex
Codex follows:
- global `~/.codex/AGENTS.md`
- project `AGENTS.md`

Codex should use repository documents instead of assumptions and should update shared task records as work progresses.

## Reading Order
Before non-trivial work, AI tools should read in this order:
1. `PROJECT-START-KIT.md` if present
2. `README.md`
3. `docs/architecture.md`
4. `docs/validation.md`
5. `tasks/todo.md`
6. `tasks/lessons.md` if relevant

## Shared Files and Their Purpose

### `tasks/todo.md`
The active task record.
Use it for:
- current goal
- owner
- status
- plan
- next step
- blockers

### `tasks/worklog.md`
The historical record of meaningful work.
Use it for:
- what was done
- who did it
- what files were touched
- what was verified
- blockers or handoff notes

### `tasks/lessons.md`
The reusable lesson log.
Use it for:
- repeated mistakes
- user corrections with lasting value
- repo-specific gotchas
- rules worth preserving

### `docs/adr/`
The durable decision record.
Use ADRs for:
- meaningful technical decisions
- architecture choices
- tradeoff-heavy decisions
- decisions future contributors may question later

Do not use ADRs for routine implementation notes.

## Ownership Rules
- Every active non-trivial task should have a clear owner in `tasks/todo.md`.
- Owner should be one of:
  - `claude`
  - `codex`
  - `human`
- If ownership is unclear, the task is not ready for execution.
- Do not silently take over work already being actively handled by another actor.

## Conflict Rules
- If another actor is already working on the same task or same files, do not continue blindly.
- Record the blocker or conflict in `tasks/todo.md`.
- Append a short note to `tasks/worklog.md`.
- Stop and wait for resolution if the conflict is material.
- Human judgment resolves unresolved conflicts.

## Update Triggers
Update files based on what changed.

### Update `docs/architecture.md` when:
- system boundaries change
- major flows change
- core assumptions change
- a new important subsystem is introduced

### Update `tasks/todo.md` when:
- the active goal changes
- task ownership changes
- plan changes
- status changes
- the next step changes
- a blocker appears or is resolved

### Update `tasks/worklog.md` when:
- meaningful work is completed
- a meaningful investigation happened
- a handoff is needed
- a blocker or conflict should be recorded
- verification was performed

### Update `tasks/lessons.md` when:
- the same mistake appears again
- a user correction has reusable value
- a repo-specific gotcha should be preserved

### Update `docs/adr/` when:
- a durable technical decision is made
- a tradeoff-heavy decision is accepted
- future contributors may need to know why a path was chosen

## Worklog Format
Each worklog entry should include:
- timestamp
- actor
- task
- files changed or inspected
- summary
- verification

## Handoff Expectations
When handing work to another actor:
- update `tasks/todo.md`
- append to `tasks/worklog.md`
- clearly state current status
- state blockers or open questions
- state what was verified
- state what remains to be done

## Validation
Completion standards are defined in `docs/validation.md`.
A task is not done until validation is performed or verification gaps are explicitly stated.

## General Rule
Prefer repository truth over hidden context, memory, or guesswork.
If repository documents and assumptions disagree, update the repository or explicitly flag the inconsistency.
