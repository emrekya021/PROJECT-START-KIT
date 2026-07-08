# Skills

This directory stores reusable workflows and execution patterns for this repository.

Use this folder for:
- bugfix workflows
- feature delivery workflows
- refactor checklists
- review procedures
- other repeatable project tasks

## Purpose
A skill answers:
"How should this kind of work be done in this repository?"

## Recommended Skill Structure
A skill should usually describe:
- when to use it
- required inputs
- execution steps
- validation expectations
- common failure modes
- expected outputs

## Usage Rule
Use skills for repeatable process, not identity or role.
If the question is "how do we do this?", it belongs in `skills/`.
If the question is "who or what kind of specialist is this?", it belongs in a runtime agent definition (`.claude/agents/` or `.codex/agents/`).

## Included Skills

### project-kickoff
Located in `skills/project-kickoff/SKILL.md`.
Guides the instantiation of this starter kit into a real project.
Runs a two-phase process: interview (collects project information) then write (fills all repository files).
This is the recommended way to start a new project from this kit.

## Notes
- Keep skills procedural and reusable.
- Avoid project mythology or vague philosophy.
- Prefer short, operational instructions over long essays.
