# Architecture

This file describes the real project architecture once the starter kit is instantiated.

If the project is not fully defined yet, keep placeholders in place and replace them when requirements become concrete.

## Project Summary
- Project name: [PROJECT_NAME]
- Project type: [PROJECT_TYPE]
- Target users: [TARGET_USERS]
- Core problem: [CORE_PROBLEM]
- Core value proposition: [CORE_VALUE]

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

## Boundaries and Responsibilities
- `src/` contains the application source code
- `tests/` contains automated tests
- `docs/` contains project meaning, workflow rules, validation standards, and architecture notes
- `tasks/` contains active work state, work history, and reusable lessons

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
- `README.md`
- `docs/ai-workflow.md`
- `docs/validation.md`
- `docs/adr/`
