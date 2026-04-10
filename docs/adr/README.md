# ADR

ADR stands for Architectural Decision Record.

Use this directory to store durable technical decisions that future contributors may need to understand.

## Use an ADR when:
- a meaningful architecture decision is made
- a tradeoff-heavy technical choice is accepted
- a system boundary changes in an important way
- future contributors may ask "why was this chosen?"

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
