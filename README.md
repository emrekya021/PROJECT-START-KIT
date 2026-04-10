# Project Start Kit

This repository is a reusable starter kit for AI-assisted software projects.

It provides a consistent structure for:
- project documentation
- AI coordination
- validation standards
- task tracking
- reusable agents, skills, and MCP notes

## Purpose
Use this repository as the base structure for starting a new project.
When a real project idea is defined, replace placeholder content in the documentation with project-specific details.

## Structure
- `CLAUDE.md` — project-specific rules for Claude
- `AGENTS.md` — project-specific rules for Codex
- `docs/architecture.md` — system structure and major flows
- `docs/ai-workflow.md` — how AI tools coordinate in this repo
- `docs/validation.md` — completion and verification standards
- `tasks/todo.md` — active task plan and ownership
- `tasks/worklog.md` — chronological work log
- `tasks/lessons.md` — reusable lessons and repeated failure patterns
- `skills/` — reusable workflows
- `agents/` — source/reference agent definitions
- `mcp/README.md` — MCP inventory and usage notes

## How to Use
1. Start from this structure
2. Add project-specific details to the documentation
3. Keep AI coordination rules in sync with the repository workflow
4. Use the task files as the shared operational memory

## Notes
- This repository may contain placeholder content until a real project is defined.
- Repository documents should be updated as the project becomes concrete.
- Long-lived technical decisions should be recorded in `docs/adr/`.
