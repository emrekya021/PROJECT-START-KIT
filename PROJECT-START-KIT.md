# Project Start Kit

This repository is a reusable starter kit for AI-assisted projects.

Its purpose is to provide a consistent structure for:
- project documentation
- AI coordination
- validation standards
- task tracking
- reusable agents, skills, and MCP notes

## What This Repository Is
This repository is not tied to a single product by default.

It is a reusable starting structure that can be instantiated into a real project by replacing placeholders with project-specific details.

This kit is optimized for:
- solo builders
- one human working with one or two AI tools
- small to medium project scope
- early-stage software products, tools, and internal systems

It may later be extended for more parallel task streams, but that is not the default operating model.

## Repository Modes

### Starter Kit Mode
The repository is still operating as a template.
Some files may contain placeholders or incomplete project details.

### Project Mode
The repository is operating as a real project repository.
Core project documents have been filled with real content and active work is underway.

## Instantiation Trigger
This repository should be considered instantiated into a real project when all of the following are true:

1. `README.md` contains a real project summary
2. `docs/architecture.md` contains real project structure, users, and core flows
3. `docs/validation.md` contains any required project-specific validation expectations
4. `tasks/todo.md` contains the first real active task
5. placeholder text is no longer acting as the primary source of truth

Until then, treat the repository as a starter kit with scaffolding content.

## Minimum Project Context Package
Before this starter kit is treated as a real project, define at least the following:

- project name
- short problem statement
- target users
- core value proposition
- success criteria or success metric
- core features
- primary user flows
- technical stack or implementation direction
- key constraints
- known risks
- non-goals

These details should be reflected primarily in:
- `README.md`
- `docs/architecture.md`

## What Should Be Customized
When a real project idea is defined, update the following files with project-specific content:

- `README.md`
- `docs/architecture.md`
- `docs/validation.md` when project-specific validation rules are needed
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
