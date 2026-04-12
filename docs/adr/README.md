# ADR

ADR stands for Architectural Decision Record.

Use this directory to store durable technical decisions that future contributors may need to understand.

## Purpose
An ADR explains not just what was chosen, but why it was chosen.

Use ADRs to preserve important technical reasoning that should survive beyond a single task, chat, or worklog entry.

## Use an ADR when:
- a meaningful architecture decision is made
- a tradeoff-heavy technical choice is accepted
- a system boundary changes in an important way
- future contributors may ask "why was this chosen?"

## ADR Threshold
Create an ADR when at least two of the following are true:
- the decision affects more than one subsystem or module
- there was a real alternative worth considering
- a future contributor may ask "why was this chosen?"
- the decision will outlive the current task
- changing the decision later would be meaningfully costly

## Do not use an ADR for:
- routine implementation details
- small refactors
- temporary task notes
- normal progress logging

Those belong in:
- `tasks/worklog.md`
- `tasks/todo.md`
- `tasks/lessons.md`

## File Naming
Use numbered files such as:
- `001-auth-strategy.md`
- `002-cache-policy.md`
- `003-data-sync-model.md`

## Recommended ADR Structure
Each ADR should usually contain:
- Title
- Status
- Context
- Decision
- Consequences

## Rule
Prefer a short, clear ADR over burying important technical reasoning inside task notes or chat history.
