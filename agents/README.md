# Agents

This directory stores source and reference agent definitions for this repository.

Use this folder for:
- downloaded agent definitions
- custom agent drafts
- reusable role descriptions
- agent source files that may later be adapted for Claude or Codex

## Purpose
This is the shared agent library for the project.

It is not the primary runtime directory for AI tools.

## Runtime Directories
- Claude runtime agents live in `.claude/agents/`
- Codex runtime agents live in `.codex/agents/`

## Usage Rule
Use `agents/` as the source/archive layer.
If an agent should actively run in Claude or Codex, adapt or copy it into the appropriate runtime directory.

## Recommended Contents
For each agent, include:
- role name
- purpose
- when to use it
- boundaries
- expected outputs
- tool preferences if relevant

## Notes
- Keep agents focused on one responsibility.
- Do not treat all downloaded agents as production-ready.
- Prefer project-specific adaptation over blind reuse.
