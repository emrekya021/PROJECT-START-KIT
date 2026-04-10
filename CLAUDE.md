# Project Claude Rules

## Project Context
This repository is a reusable Project Start Kit for AI-assisted software projects.

It provides a consistent structure for:
- project documentation
- AI coordination
- validation standards
- task tracking
- reusable agents, skills, and MCP notes

Project-specific content may still be incomplete or written as placeholders.
Do not assume placeholder content is final.
When real project details are added, treat the repository documents as the source of truth.

Read project context from:
1. `PROJECT-START-KIT.md`
2. `README.md`
3. `docs/architecture.md`
4. `docs/ai-workflow.md`
5. `docs/validation.md`
6. `tasks/todo.md`

## How to Work in This Repo
- Follow the global Claude rules first.
- Then follow this project-specific workflow.
- Do not invent process when the repository already defines one.
- Treat repository docs as the source of truth for project workflow and completion criteria.

## Required Reading Order
Before non-trivial work:
1. Read `PROJECT-START-KIT.md`
2. Read `README.md`
3. Read `docs/architecture.md`
4. Read `docs/ai-workflow.md`
5. Read `docs/validation.md`
6. Read `tasks/todo.md`
7. Read `tasks/lessons.md` if the task is related to prior mistakes or recurring patterns

## Task Coordination
- `tasks/todo.md` is the active task record.
- Before starting non-trivial work, update `tasks/todo.md` with:
  - goal
  - owner
  - status
  - plan
  - next step
- If another actor is already actively working on the same task or same files, do not continue blindly.
- If conflict or ownership ambiguity exists, write the blocker in `tasks/todo.md`, note it in `tasks/worklog.md`, and stop.

## Worklog Discipline
- Record meaningful work in `tasks/worklog.md`.
- Every worklog entry should include:
  - timestamp
  - actor (`claude`, `codex`, or `human`)
  - task
  - files changed or inspected
  - summary
  - verification
- Use append-only logging. Do not rewrite prior history unless fixing an obvious error.

## Lessons
- Update `tasks/lessons.md` when:
  - the user corrects a reusable mistake
  - the same failure pattern appears again
  - a project-specific gotcha should not be repeated
- Keep lessons short, specific, and actionable.

## Architecture and Decisions
- If the system design, boundaries, major flow, or mental model changes, update `docs/architecture.md`.
- If a durable technical decision is made and future readers may ask "why was this chosen?", create or update an ADR in `docs/adr/`.
- Use ADRs for meaningful design decisions, not routine implementation notes.

## Validation
- Follow `docs/validation.md` before marking work complete.
- Do not mark work done unless the required validation is performed or clearly noted as incomplete.
- If validation cannot be completed, say exactly what was checked and what remains unverified.

## Agents and Skills
- `skills/` contains reusable project workflows.
- `agents/` contains source/reference agent definitions.
- `.claude/agents/` contains Claude-usable project agents.
- Use subagents when they clearly improve focus, separation, or analysis quality.
- Keep one responsibility per subagent.

## Communication
- For non-trivial work, state the approach before broad changes.
- Keep progress updates short and useful.
- At the end, summarize:
  - what changed
  - why it changed
  - what was verified
  - any blockers or follow-up work

## Done Criteria
A task is not done until all of the following are true:
- the active task record is updated
- meaningful work is logged in `tasks/worklog.md`
- validation was performed according to `docs/validation.md` or gaps are clearly stated
- relevant docs were updated if the change affected architecture, workflow, or durable decisions
