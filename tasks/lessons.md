# Lessons

Use this file to record reusable lessons, repeated mistakes, and project-specific gotchas.

Keep entries short, specific, and actionable.
Do not turn this file into a diary or a long narrative.

## When to Add a Lesson
Add a lesson when:
- the user gives a correction with lasting value
- the same mistake appears again
- a repo-specific gotcha should be preserved
- a repeated failure pattern should become an explicit rule

## Entry Template

### [LESSON_TITLE]
- Context: [WHEN_THIS_MATTERS]
- Problem: [WHAT_WENT_WRONG]
- Rule: [WHAT_TO_DO_INSTEAD]

---

## Example Lessons

### Update shared task files during meaningful work
- Context: When multiple actors may work in the same repository
- Problem: Work happened without leaving enough shared context for others
- Rule: Update `tasks/todo.md` and `tasks/worklog.md` for meaningful changes, blockers, and handoffs

### Do not treat placeholder content as final requirements
- Context: While using this repository as a reusable starter kit
- Problem: Placeholder text may be mistaken for actual product decisions
- Rule: Treat placeholders as scaffolding until replaced by real project details

### Never use git stash to test against a clean tree mid-task
- Context: Testing scripts/hooks that behave differently on a clean vs dirty repo
- Problem: `git stash -u` removed all in-progress work; the test command failed mid-chain, so `git stash pop` never ran and uncommitted work was temporarily lost
- Rule: Test clean-repo behavior in a throwaway repo (scratchpad), never by stashing real in-progress work

### Record durable technical decisions separately
- Context: When a meaningful architectural or tradeoff-heavy decision is made
- Problem: Important decisions become hard to find when buried in task notes
- Rule: Record durable technical decisions in `docs/adr/` instead of leaving them only in logs or task notes

---
