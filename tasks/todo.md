# Active Task

Use this file as the single source of truth for the current active task.

This starter kit is designed around a single active task by default.
If the project later grows into multiple truly independent parallel work streams, this model may be expanded into a sharded task system.

If no active task exists yet, keep the placeholders until real work begins.

## Goal
Remove the unused `agents/` and `mcp/` directories from the starter kit and clean up
all references to them across the documentation.

## Owner
claude

## Status
done

## Priority
low

## Context
The operator observed that AI tools never actually write to `agents/` or `mcp/` —
real runtime agents live in `.claude/agents/` / `.codex/agents/` and real MCP
configuration lives in tool-specific config layers (`.mcp.json`, Claude/Codex config).
Both folders contained only a README and acted as manually-maintained parallel
documentation with silent-drift risk, so they were removed to simplify the kit.

## Plan
- [x] Inspect `agents/README.md` and `mcp/README.md`, confirm no real content exists
- [x] Find all references across the repo
- [x] Delete `agents/` and `mcp/` (git rm)
- [x] Clean references in `CLAUDE.md`, `AGENTS.md`, `README.md`, `PROJECT-START-KIT.md`, `docs/ai-workflow.md`, `skills/README.md`
- [x] Verify no stale references remain (grep)
- [x] Log the work in `tasks/worklog.md`

## Current Focus
Complete.

## Next Step
None. If MCP usage notes are ever needed, document them under `docs/` instead.

## Files Involved
- `agents/README.md` (deleted)
- `mcp/README.md` (deleted)
- `CLAUDE.md`
- `AGENTS.md`
- `README.md`
- `PROJECT-START-KIT.md`
- `docs/ai-workflow.md`
- `skills/README.md`

## Blockers
- None

## Validation Plan
- `grep` across all repo markdown to confirm no remaining `agents/` or `mcp/` references
  (only intentional `.claude/agents/` / `.codex/agents/` runtime references remain)
- `git status` shows only the intended deletions and edits

## Notes
- Level 1 (small, low-risk) change per `docs/validation.md` — documentation/structure only.
- Repo remains in Starter Kit Mode.
