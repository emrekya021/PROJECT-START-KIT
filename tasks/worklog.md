# Work Log

Use this file as the append-only record of meaningful work in this repository.

Do not overwrite history unless fixing an obvious factual error.
Add new entries to the top or bottom consistently.

## Entry Template

### [YYYY-MM-DD HH:MM]
- Actor: [claude / codex / human]
- Task: [SHORT_TASK_NAME]
- Files: [FILE_1], [FILE_2], [FILE_3]
- Summary: [WHAT_WAS_DONE]
- Verification: [WHAT_WAS_CHECKED]
- Blockers / Next: [BLOCKER_OR_NEXT_STEP]

---

### [2026-07-08 16:30]
- Actor: claude
- Task: remove unused `agents/` and `mcp/` directories
- Files: `agents/README.md` (deleted), `mcp/README.md` (deleted), `CLAUDE.md`, `AGENTS.md`, `README.md`, `PROJECT-START-KIT.md`, `docs/ai-workflow.md`, `skills/README.md`, `tasks/todo.md`
- Summary: Removed the `agents/` and `mcp/` folders because they held only READMEs and were never written to by the AI tools — runtime agents live in `.claude/agents/` / `.codex/agents/` and live MCP configuration lives in tool-specific config layers. Both folders were manually-maintained parallel documentation with drift risk. Cleaned all references: structure lists, "Agents and Skills" sections, PROJECT-START-KIT customization list, ai-workflow "Agent Source and Runtime Rule" (renamed to "Agent Runtime Rule", now referencing only runtime dirs), and skills/README's agents pointer.
- Verification: `grep` across all repo markdown confirms no stale `agents/` or `mcp/` references remain (only intentional `.claude/agents/` / `.codex/agents/` runtime references); `git status` shows only the intended deletions and doc edits.
- Blockers / Next: None. If MCP usage notes are needed later, document them under `docs/`.

---

### [2026-07-08 14:00]
- Actor: claude
- Task: add global-templates/ reference copies of global Claude/Codex rules
- Files: `global-templates/CLAUDE.md` (new), `global-templates/AGENTS.md` (new), `global-templates/README.md` (new), `PROJECT-START-KIT.md`, `README.md`, `skills/project-kickoff/SKILL.md`, `tasks/todo.md`
- Summary: Created `global-templates/` holding byte-identical reference copies of `~/.claude/CLAUDE.md` and `~/.codex/AGENTS.md`, plus a README explaining they are informational only and must never be auto-installed into the user's home directory. Updated `PROJECT-START-KIT.md` Global AI Rules section and root `README.md` structure list to reference the folder. Added an explicit non-auto-install guard to `skills/project-kickoff/SKILL.md` so future kickoff runs never write to `~/.claude/` or `~/.codex/` on their own.
- Verification: `diff` confirmed both copies are byte-identical to the real global files; confirmed the real global files' mtimes are unchanged (not touched); `git status` shows only the intended files as modified/added.
- Blockers / Next: None. Follow-up (optional, on request only): re-sync the copies if the operator's real global files change later.

---

## Example Entry

### [2026-04-10 18:30]
- Actor: claude
- Task: starter kit local rules setup
- Files: `CLAUDE.md`, `AGENTS.md`
- Summary: Updated repository-local AI operating rules for starter-kit usage and placeholder-aware project context.
- Verification: Reviewed structure consistency against repo workflow rules. No runtime validation required.
- Blockers / Next: Create `docs/` and `tasks/` starter templates.

---
