# Global Templates

This folder holds reference copies of the operator's **global** AI operating rules:

- `CLAUDE.md` — mirrors `~/.claude/CLAUDE.md` (Claude Code global rules)
- `AGENTS.md` — mirrors `~/.codex/AGENTS.md` (Codex global rules)

These are the rules that apply across *all* of the operator's projects, not just this one.
For rules specific to this repository, see `CLAUDE.md` and `AGENTS.md` in the repo root instead.

## Why This Folder Exists

The actual global files live outside any repository, at `~/.claude/CLAUDE.md` and
`~/.codex/AGENTS.md`. They aren't visible when someone else clones this starter kit,
and a human browsing the repo has no way to see what "global-level" behavior looks like.

Keeping reference copies here makes that context visible and versionable as part of the kit.

## Non-Auto-Install Rule

**These files are informational only.**

- Do not copy, symlink, or write anything from this folder into `~/.claude/` or `~/.codex/`
  automatically, as part of kit instantiation, project kickoff, or any other routine workflow.
- Only install a file from here into the user's home directory when the human explicitly
  asks for it (e.g. "bu global kuralları home dizinime kur", "install my global rules").
- Before installing, check whether a file already exists at the target path
  (`~/.claude/CLAUDE.md` or `~/.codex/AGENTS.md`). If it does, show the diff and confirm
  with the human before overwriting — never silently clobber existing global config.

## Keeping These in Sync

These are snapshots, not a live sync. If the operator's real global files change, these
copies will drift out of date until someone refreshes them by hand (or asks an agent to).
That's expected — treat them as "last known reference," not a source of truth for the
operator's current global config.
