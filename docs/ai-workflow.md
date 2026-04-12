# AI Workflow

This file defines how AI-assisted work is coordinated in this repository.

The goal is to keep Claude, Codex, and the human operator aligned through shared repository state instead of hidden context.

## Core Principle
AI tools do not share internal memory with each other.
Coordination happens through repository documents and task records.

The shared operational memory of this repository is:
- `PROJECT-BRIEF.md`
- `docs/architecture.md`
- `README.md`
- `docs/validation.md`
- `tasks/todo.md`
- `tasks/worklog.md`
- `tasks/lessons.md`
- `docs/adr/`

## Default Operating Model
This starter kit is optimized for:
- one human operator
- one or two AI tools
- small to medium project scope
- a single primary active work stream

By default, this repository uses a single active task model through `tasks/todo.md`.

If the project grows into multiple independent parallel work streams, this workflow may later evolve into a sharded task model such as:
- `tasks/todo.md` as an index
- `tasks/active/task-001-...md`
- `tasks/active/task-002-...md`

Until that becomes necessary, prefer one active task record.

## Roles

### Human
The human provides direction, priorities, corrections, and final judgment when conflicts or ambiguities matter.

The human is the final authority when:
- ownership conflicts appear
- task priority is unclear
- a technical direction is disputed
- validation is incomplete but work needs a decision

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
1. `PROJECT-BRIEF.md`
2. `PROJECT-START-KIT.md` if present
3. `docs/architecture.md`
4. `docs/ai-workflow.md`
5. `docs/validation.md`
6. `README.md`
7. `tasks/todo.md`
8. `tasks/lessons.md` if relevant

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

## Ownership Precedence
When ownership or control is unclear, resolve authority in this order:
1. explicit human instruction
2. the `Owner` field in `tasks/todo.md`
3. supporting context from `tasks/worklog.md`

`tasks/worklog.md` provides context, but it does not override explicit ownership.

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

## ADR Threshold
Create an ADR when at least two of the following are true:
- the decision affects more than one subsystem or module
- there was a real alternative worth considering
- a future contributor may ask "why was this chosen?"
- the decision will outlive the current task
- changing the decision later would be meaningfully costly

Prefer worklog notes for routine implementation details.

## Worklog Format
Each worklog entry should include:
- timestamp
- actor
- task
- files changed or inspected
- summary
- verification

## Worklog Granularity
Do not create a worklog entry for every tiny edit.

A worklog entry is expected when:
- a meaningful unit of work is completed
- a meaningful investigation happened
- a blocker or conflict appears
- a handoff is needed
- validation was performed
- a task state materially changed

In practice:
- small tasks may need one entry
- medium tasks may need one to three entries
- larger tasks may need milestone-based entries

## Handoff Expectations
When handing work to another actor:
- update `tasks/todo.md`
- append to `tasks/worklog.md`
- clearly state current status
- state blockers or open questions
- state what was verified
- state what remains to be done

## Skills Rule
`skills/` is for reusable workflows.

A workflow should be considered a candidate for a skill when:
- it has already repeated at least twice
- or it is already clearly reusable, multi-step, and process-heavy on first appearance

Do not create a new skill for every one-off task.
Create or request a skill when reuse is likely.

## Agent Source and Runtime Rule
- `agents/` is the source and reference layer for agent definitions
- `.claude/agents/` is the Claude runtime layer
- `.codex/agents/` is the Codex runtime layer

Runtime agent files may differ from source agents because Claude and Codex do not use identical formats or behaviors.

If a source agent in `agents/` changes, relevant runtime agents should be reviewed and updated intentionally.
Do not assume automatic synchronization.

## Validation
Completion standards are defined in `docs/validation.md`.
A task is not done until validation is performed or verification gaps are explicitly stated.

## General Rule
Prefer repository truth over hidden context, memory, or guesswork.
If repository documents and assumptions disagree, update the repository or explicitly flag the inconsistency.
