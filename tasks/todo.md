# Active Task

Use this file as the single source of truth for the current active task.

This starter kit is designed around a single active task by default.
If the project later grows into multiple truly independent parallel work streams, this model may be expanded into a sharded task system.

If no active task exists yet, keep the placeholders until real work begins.

## Goal
Add a `global-templates/` folder to the repo containing reference copies of the
operator's global `~/.claude/CLAUDE.md` and `~/.codex/AGENTS.md`, visible in the kit
but never auto-installed into the user's home directory.

## Owner
claude

## Status
done

## Priority
low

## Context
User wants the global Claude/Codex rule files visible inside this starter kit (as a
folder, not merged into the root project `CLAUDE.md`/`AGENTS.md`), purely for reference.
The real global files at `~/.claude/CLAUDE.md` and `~/.codex/AGENTS.md` must stay
untouched and remain the source of truth. The kit must never copy anything into the
user's home directory automatically — only when explicitly asked by the human in a
future request.

## Plan
- [x] Locate the real global files (`~/.claude/CLAUDE.md`, `~/.codex/AGENTS.md`)
- [x] Create `global-templates/` with byte-identical copies + explanatory README
- [x] Update `PROJECT-START-KIT.md` Global AI Rules section to reference the folder
- [x] Update root `README.md` Structure list
- [x] Add an explicit non-auto-install guard to `skills/project-kickoff/SKILL.md`
- [x] Log the work in `tasks/worklog.md`

## Current Focus
Complete — available for follow-up if the operator wants the templates refreshed later.

## Next Step
None. Optional future step: re-sync `global-templates/*.md` if the real global files change.

## Files Involved
- `global-templates/CLAUDE.md` (new)
- `global-templates/AGENTS.md` (new)
- `global-templates/README.md` (new)
- `PROJECT-START-KIT.md`
- `README.md`
- `skills/project-kickoff/SKILL.md`

## Blockers
- None

## Validation Plan
- `diff` the copies against the real `~/.claude/CLAUDE.md` and `~/.codex/AGENTS.md` to confirm byte-identical
- Re-read edited docs to confirm the new folder is referenced correctly and no other file was affected
- Confirm the real global files were not modified

## Notes
- This is a Level 1 (small, low-risk) change per `docs/validation.md` — text/doc additions only, no runtime behavior.
- Repo is still in Starter Kit Mode; this task is repo-maintenance, not the first real project task.
