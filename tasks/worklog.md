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
