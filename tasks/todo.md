# Active Task

The single source of truth for the current active task. One active task at a time.
Future work lives in `tasks/backlog.md`. If no active task exists, keep the placeholders.

## Goal
Restructure the kit as "Project Start Kit V2": single-AI memory/planning optimization
(tiered reading, canonical process doc, in-repo plans, backlog, worklog guard hook,
folder discipline).

## Owner
claude

## Status
done — pending human-approved commit and V2 push (see backlog)

## Priority
high

## Active plan
`plans/001-project-start-kit-v2.md`

## Context
Designed and approved with the operator across this session. The kit was optimized for
multi-AI coordination; V2 optimizes it for one AI working well across sessions.
Rationale and decisions are recorded in the plan file.

## Plan
- [x] Task 1: `.claude/settings.json` (plansDirectory) + `plans/README.md`
- [x] Task 2: rewrite `docs/ai-workflow.md` as canonical process doc (~90 lines)
- [x] Task 3: thin mirrored `CLAUDE.md` + `AGENTS.md` (42 lines each)
- [x] Task 4: worklog guard Stop hook (tested: warn / loop-protect / worklog-touched / clean)
- [x] Task 5: refresh this file (Active plan field, backlog link)
- [x] Task 6: `docs/adr/000-template.md`
- [x] Task 7: reference updates + kickoff skill (folder-map step) + architecture Folder Map section
- [x] Task 8: close-out — worklog written, verification done; commit + V2 push await human approval

## Next Step
Human decision: approve commit, then backlog item 1 (push as "Project Start Kit V2" to GitHub).

## Files Involved
See `plans/001-project-start-kit-v2.md` task list.

## Blockers
- None

## Validation Plan
Full set in the plan file: grep for stale references, `wc -l` limits, JSON validity,
hook live tests, CLAUDE/AGENTS diff.

## Notes
- Level 2 change per `docs/validation.md` (docs + config, no product runtime).
- When this task closes and Next Step is empty, propose the top item from `tasks/backlog.md`.
