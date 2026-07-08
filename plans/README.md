# Plans

This folder holds durable implementation plans — the "how are we building this?" memory of the project.

Plan-mode plans approved in Claude Code land here automatically (via the `plansDirectory` setting in `.claude/settings.json`). Hand-written plans can also live here.

## Why this exists
The AI forgets everything between sessions. A plan saved here survives sessions, `/clear`, and context compaction — so multi-session work continues from the same reasoning instead of being re-derived each morning.

## When a plan is required
- Level 2-3 work per `docs/validation.md` (normal features, refactors, high-risk changes): yes.
- Level 1 work (small, low-risk changes): no plan file needed — `tasks/todo.md` alone is enough.

## Naming
- Hand-written plans: `NNN-short-slug.md` (e.g. `001-project-start-kit-v2.md`)
- Auto-saved plan-mode files may keep their generated names; rename to `NNN-slug.md` if they become the active plan.

## Lifecycle
1. Plan is drafted (usually in plan mode) and approved by the human.
2. `tasks/todo.md` points to it via the `Active plan:` field.
3. During work, checkboxes in the plan track progress.
4. When the task closes, the plan stays here as an archive — it documents how and why the work was done.

Do not hand-mirror plans into other folders; this is the single home for them.
