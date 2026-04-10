# Project Start Kit

This repository is a reusable starter kit for AI-assisted software projects.

Its purpose is to provide a consistent project structure for:
- project documentation
- AI coordination
- validation standards
- task tracking
- reusable agents, skills, and MCP notes

## What This Repository Is
This repository is not tied to a single product by default.
It is a reusable starting structure that can be instantiated into a real project by replacing placeholders with project-specific details.

## What Should Be Customized
When a real project idea is defined, update the following files with project-specific content:

- `README.md`
- `docs/architecture.md`
- `docs/validation.md` if project-specific validation rules are needed
- `tasks/todo.md` when active work begins
- `docs/adr/` when durable technical decisions are made
- `skills/` when reusable workflows emerge
- `agents/` when reusable agent definitions are added
- `mcp/README.md` when external MCP tooling becomes relevant

## Repository Layers

### Global AI Rules
These are outside the repo and define general working behavior:
- `~/.claude/CLAUDE.md`
- `~/.codex/AGENTS.md`

### Project AI Rules
These are inside the repo and define repository-specific behavior:
- `CLAUDE.md`
- `AGENTS.md`

### Project Meaning
These explain what the project is:
- `README.md`
- `docs/architecture.md`

### AI Coordination
These define how AI work is coordinated:
- `docs/ai-workflow.md`
- `tasks/todo.md`
- `tasks/worklog.md`
- `tasks/lessons.md`

### Quality and Completion
These define when work is considered complete:
- `docs/validation.md`

### Durable Decisions
These explain important technical decisions:
- `docs/adr/`

## Typical Workflow
1. Start from this repository structure
2. Replace placeholders with real project details
3. Define the current active task in `tasks/todo.md`
4. Record meaningful work in `tasks/worklog.md`
5. Record reusable lessons in `tasks/lessons.md`
6. Record durable decisions in `docs/adr/`
7. Keep documentation aligned with actual repository truth

## Placeholder Rule
Placeholder content is scaffolding, not truth.
Do not treat placeholders as final requirements.
Replace them when real project requirements become known.

## Final Principle
Use this repository as a stable operating system for starting and running AI-assisted projects.
Keep the structure stable.
Change the content as the real project becomes concrete.
