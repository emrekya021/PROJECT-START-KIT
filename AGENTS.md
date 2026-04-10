# Project Codex Rules

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
- Follow the global Codex rules first.
- Then apply these project-specific instructions.
- Do not invent local process when the repository already defines one.
- Treat repository documents as the source of truth for workflow, coordination, and completion standards.

## Required Reading Order
Before non-trivial work:
1. Read `PROJECT-START-KIT.md`
2. Read `README.md`
3. Read `docs/architecture.md`
4. Read `docs/ai-workflow.md`
5. Read `docs/validation.md`
6. Read `tasks/todo.md`
7. Read `tasks/lessons.md` when the task touches known failure patterns or prior mistakes

## Task Coordination
- `tasks/todo.md` is the active task record.
- Before non-trivial work, update `tasks/todo.md` with:
  - goal
  - owner
  - status
  - plan
  - next step
- If another actor is already working on the same task or overlapping files, do not continue blindly.
- Record blockers or conflicts in `tasks/todo.md`, append a note to `tasks/worklog.md`, and stop until resolved.

## Worklog Discipline
- Record meaningful work in `tasks/worklog.md`.
- Each worklog entry should include:
  - timestamp
  - actor (`claude`, `codex`, or `human`)
  - task
  - files changed or inspected
  - summary
  - verification
- Append new entries. Do not rewrite prior history except to fix an obvious factual mistake.

## Lessons
- Update `tasks/lessons.md` when:
  - a reusable user correction is given
  - a repeated mistake appears
  - a repo-specific rule or gotcha should be preserved
- Keep lessons brief and operational.

## Architecture and Decisions
- If a change affects system structure, boundaries, major flow, or core assumptions, update `docs/architecture.md`.
- If a durable technical decision is made and future readers may need the rationale, create or update an ADR in `docs/adr/`.
- Do not use ADRs for routine implementation details.

## Validation
- Follow `docs/validation.md` before considering work complete.
- Do not mark work done without the required validation or a clear statement of what remains unverified.
- Verification must be about behavior, not just file edits.

## Agents and Skills
- `skills/` contains reusable project workflows.
- `agents/` contains source/reference agent definitions.
- `.codex/agents/` contains Codex-usable project agents.
- Use additional agents intentionally when they improve separation of concerns or analysis quality.
- Do not assume delegation is automatic; invoke it explicitly when useful.
- Keep one responsibility per agent.

## Communication
- For non-trivial work, state the approach before broad edits.
- Keep updates concise and relevant.
- At completion, summarize:
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
