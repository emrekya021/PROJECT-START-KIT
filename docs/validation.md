# Validation

This file defines the minimum standard for considering work complete in this repository.

The goal is to ensure that changes are not only implemented, but also verified at a level appropriate to their scope and risk.

## Core Rule
A task is not done just because code changed.
A task is done when the relevant behavior has been verified or when verification gaps are explicitly stated.

## Validation Layers

### Core Validation Policy
This starter kit defines the baseline validation rules that should apply in every project using this structure.

These baseline rules include:
- verify behavior, not only changed files
- match validation depth to change risk
- record meaningful verification in `tasks/worklog.md`
- update related docs when repository truth changes
- state validation gaps honestly when full verification is not possible

### Project-Specific Validation Policy
When this starter kit is instantiated into a real project, this file may be extended with stack-specific or workflow-specific validation expectations.

Examples may include:
- unit test commands
- integration test commands
- lint commands
- typecheck commands
- build commands
- migration checks
- preview deployment checks
- e2e checks
- manual QA flows

Keep the core policy stable.
Add project-specific execution details when the project becomes concrete.

## Validation Principles
- Verify behavior, not only changed files.
- The scope of validation should match the risk of the change.
- Small changes may require small checks.
- High-risk or system-wide changes require stronger validation.
- If full validation is not possible, state exactly what was and was not verified.

## Minimum Done Criteria
At minimum, all of the following must be true before marking work complete:
- the active task record in `tasks/todo.md` is updated
- meaningful work is logged in `tasks/worklog.md`
- relevant validation steps were performed or explicitly marked incomplete
- relevant docs were updated if architecture, workflow, or durable decisions changed

## Validation Levels

### Level 1 — Small, Low-Risk Changes
Use when:
- text-only changes
- isolated config edits
- small, obvious fixes with low blast radius

Expected validation:
- inspect the changed result
- verify the intended effect directly
- note the check performed in `tasks/worklog.md`

### Level 2 — Normal Implementation Changes
Use when:
- feature work affects one area
- bug fixes change logic
- refactors affect internal structure without major architecture changes

Expected validation:
- run relevant tests if they exist
- run linting and/or type checks if relevant
- perform focused manual verification of affected behavior
- document what was checked

### Level 3 — High-Risk or Broad Changes
Use when:
- changes affect multiple subsystems
- architecture or data flow changes
- auth, payments, persistence, synchronization, or security-related changes
- broad refactors with meaningful blast radius

Expected validation:
- run relevant tests
- run linting and type checks when available
- run build validation if relevant
- perform focused manual or scenario-based verification
- update relevant docs
- document risks, verification scope, and any remaining uncertainty

## Validation by Change Type

### Bug Fix
Validate by:
- reproducing the bug when possible
- confirming the bug no longer occurs
- checking for likely regressions in nearby logic
- documenting what proved the fix

### Feature Work
Validate by:
- confirming the feature behaves as intended
- checking key user-facing paths
- verifying the feature matches the documented goal
- confirming related docs are still accurate

### Refactor
Validate by:
- confirming behavior did not unintentionally change
- checking changed boundaries and integration points
- running existing automated checks when available
- documenting what remained behaviorally equivalent

### Documentation Change
Validate by:
- checking for factual consistency
- confirming referenced files and paths are correct
- ensuring the document matches repository reality

## Required Validation Notes
Every meaningful completed task should leave behind a clear verification record in `tasks/worklog.md`.

Validation notes should answer:
- what was checked
- how it was checked
- what passed
- what remains unverified

## When Validation Is Incomplete
If validation cannot be fully completed:
- do not hide the gap
- do not claim the task is fully done without qualification
- record the limitation in `tasks/worklog.md`
- state the reason clearly
- state what should be checked next

## Documentation Update Rules
Update related docs when the work changes repository truth.

Examples:
- update `docs/architecture.md` when architecture or system boundaries change
- update `docs/adr/` when a durable technical decision is made
- update `tasks/lessons.md` when a reusable lesson is discovered
- update `tasks/todo.md` when the active plan, owner, status, or blocker changes

## Final Rule
Prefer an honest incomplete validation note over a false claim of completion.
