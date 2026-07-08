# Architecture

This file describes the technical architecture of the project.

For project intent, motivation, target users, and roadmap, see `PROJECT-BRIEF.md`.
This file focuses on how the system is built, not why.

If the project is not fully defined yet, keep placeholders in place and replace them when requirements become concrete.

## Technical Summary
- Project name: [PROJECT_NAME]
- Project type: [PROJECT_TYPE]
- Tech stack: [TECH_STACK]

## System Overview
[HIGH_LEVEL_ARCHITECTURE_SUMMARY]

Example:
- A web application with a frontend client, backend API, database, and optional third-party integrations
- A mobile-first SaaS with authentication, workspace-based data, and admin tooling
- A local-first tool with sync, offline state, and cloud backup

## Major Components

### 1. Frontend
- Stack: [FRONTEND_STACK]
- Responsibilities:
  - [FRONTEND_RESPONSIBILITY_1]
  - [FRONTEND_RESPONSIBILITY_2]

### 2. Backend
- Stack: [BACKEND_STACK]
- Responsibilities:
  - [BACKEND_RESPONSIBILITY_1]
  - [BACKEND_RESPONSIBILITY_2]

### 3. Database / Storage
- System: [DATABASE_OR_STORAGE]
- Responsibilities:
  - [DATA_RESPONSIBILITY_1]
  - [DATA_RESPONSIBILITY_2]

### 4. Authentication
- System: [AUTH_SYSTEM]
- Responsibilities:
  - [AUTH_RESPONSIBILITY_1]
  - [AUTH_RESPONSIBILITY_2]

### 5. External Integrations
- [INTEGRATION_1]
- [INTEGRATION_2]
- [INTEGRATION_3]

## Core Flows

### [FLOW_NAME_1]
1. [STEP_1]
2. [STEP_2]
3. [STEP_3]

### [FLOW_NAME_2]
1. [STEP_1]
2. [STEP_2]
3. [STEP_3]

## Key Entities / Data Model
- [ENTITY_1]
- [ENTITY_2]
- [ENTITY_3]

For each important entity, define:
- purpose
- ownership
- lifecycle
- relationships

## Folder Map
The concrete directory layout for this project. AI tools follow this map when creating
files (folder discipline rule in `CLAUDE.md` / `AGENTS.md`): no files in the repo root,
and new top-level folders require updating this map first.

Filled at kickoff for the chosen stack. Example shape:
- `src/` — application source code ([SUBFOLDER_NOTES])
- `tests/` — automated tests, mirroring `src/` structure
- `public/` or `assets/` — static assets (if applicable)
- `docs/`, `tasks/`, `plans/`, `skills/` — kit documentation and coordination (fixed)

Project folder map:
- [FOLDER_1] — [PURPOSE]
- [FOLDER_2] — [PURPOSE]

## Boundaries and Responsibilities
- `src/` contains the application source code
- `tests/` contains automated tests
- `docs/` contains project meaning, workflow rules, validation standards, and architecture notes
- `tasks/` contains active work state, work history, and reusable lessons
- `plans/` contains durable implementation plans

Add project-specific boundaries here:
- [BOUNDARY_RULE_1]
- [BOUNDARY_RULE_2]

## Architectural Constraints
- [CONSTRAINT_1]
- [CONSTRAINT_2]
- [CONSTRAINT_3]

Examples:
- Keep API contracts backward compatible unless intentionally versioned
- Avoid direct writes from the frontend to privileged data stores
- Do not place business logic in presentation-only layers

## Assumptions
- [ASSUMPTION_1]
- [ASSUMPTION_2]

## Risks
- [RISK_1]
- [RISK_2]

## Open Questions
- [QUESTION_1]

- [QUESTION_2]

## Related Documents
- `PROJECT-BRIEF.md` — project intent, motivation, roadmap
- `README.md` — setup instructions, folder overview
- `docs/ai-workflow.md`
- `docs/validation.md`
- `docs/adr/`
