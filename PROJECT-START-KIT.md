# Project Start Kit

This repository is a reusable starter kit for AI-assisted projects.

Its purpose is to provide a consistent structure for:
- project documentation
- AI coordination
- validation standards
- task tracking
- reusable skills

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

1. `PROJECT-BRIEF.md` contains real project intent (problem, users, value proposition, roadmap)
2. `docs/architecture.md` contains real project technical structure and core flows
3. `README.md` contains project name, tech stack, and setup instructions
4. `docs/validation.md` contains any required project-specific validation expectations
5. `tasks/todo.md` contains the first real active task
6. placeholder text is no longer acting as the primary source of truth

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
- high-level roadmap (phases, not detailed tasks)

These details should be captured in:
- `PROJECT-BRIEF.md` — the primary source of project intent and decisions

Then derived into:
- `docs/architecture.md` — technical structure, components, data model, core flows
- `README.md` — project name, tech stack, setup instructions, folder overview

## What Should Be Customized
When a real project idea is defined, update the following files with project-specific content:

- `PROJECT-BRIEF.md` (create and fill — this is the primary project intent document)
- `README.md`
- `docs/architecture.md`
- `docs/validation.md` when project-specific validation rules are needed
- `tasks/todo.md` when active work begins
- `docs/adr/` when durable technical decisions are made
- `skills/` when reusable workflows emerge
- `.claude/agents/` or `.codex/agents/` when project-specific runtime agents are added

## Repository Layers

### Global AI Rules
These are outside the repo and define general working behavior:
- `~/.claude/CLAUDE.md`
- `~/.codex/AGENTS.md`

Reference copies are kept in `global-templates/` for visibility — they are informational
only. This kit never writes to the user's home directory automatically; a file from
`global-templates/` is installed there only when the human explicitly asks. See
`global-templates/README.md` for the full rule.

### Project AI Rules
These are inside the repo and define repository-specific behavior:
- `CLAUDE.md`
- `AGENTS.md`

### Project Meaning
These explain what the project is:
- `PROJECT-BRIEF.md` — project intent, motivation, roadmap, non-goals (primary source)
- `docs/architecture.md` — technical structure, components, flows
- `README.md` — technical identity card (stack, setup, folder overview)

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

## How to Instantiate

The recommended way to instantiate this starter kit is to use the `project-kickoff` skill in `skills/project-kickoff/SKILL.md`.

This skill runs a two-phase process:
1. **Interview** — collects project information through conversation, asks targeted questions, offers recommendations
2. **Write** — fills `PROJECT-BRIEF.md`, derives `architecture.md`, `README.md`, updates AI context files, and opens the first task

To use it, tell your AI tool something like: "I have a project idea, let's kick off" or "yeni proje fikrim var" and the skill will guide the process.

Alternatively, you can instantiate manually by filling the files listed in "What Should Be Customized" above.

## Typical Workflow (After Instantiation)
1. Work on the active task in `tasks/todo.md`
2. Record meaningful work in `tasks/worklog.md`
3. Record reusable lessons in `tasks/lessons.md`
4. Record durable decisions in `docs/adr/`
5. Keep documentation aligned with actual repository truth

## Placeholder Rule
Placeholder content is scaffolding, not truth.
Do not treat placeholders as final requirements.
Replace them when real project requirements become known.

## Final Principle
Use this repository as a stable operating system for starting and running AI-assisted projects.
Keep the structure stable.
Change the content as the real project becomes concrete.
