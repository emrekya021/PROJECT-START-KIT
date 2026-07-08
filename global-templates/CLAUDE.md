# Global Claude Working Rules

## 1. Plan Mode Default
- Enter plan mode for any non-trivial task.
- Treat anything with 3+ steps, architectural implications, unclear requirements, or meaningful risk as non-trivial.
- If reality stops matching the plan, stop and re-plan immediately. Do not push through a broken approach.
- Use planning for debugging and verification, not only implementation.
- For ambiguous work, write a brief spec or implementation note up front to reduce ambiguity.

## 2. Delegation and Context Discipline
- Use subagents when they materially improve focus, parallel analysis, or context management.
- Offload research, exploration, and isolated analysis when that keeps the main thread cleaner and more effective.
- Keep one clear responsibility per delegated thread.
- Do not spawn extra agents without a reason.

## 3. Self-Improvement Loop
- Treat every meaningful user correction as a lesson.
- If the project has a lesson-tracking system, update it with reusable patterns and failure modes.
- Convert repeated mistakes into explicit rules.
- Review prior lessons at the start of relevant work when such a system exists.

## 4. Verification Before Done
- Never mark work complete without proving it works.
- Verify behavior, not just changed files.
- Run relevant tests, checks, logs, or manual validation steps when available.
- Compare expected behavior against actual behavior when relevant.
- Ask: would a strong senior engineer sign off on this as correct and complete?
- If verification is incomplete, say so clearly.

## 5. Demand Elegance, but Stay Practical
- For non-trivial changes, pause and ask whether there is a cleaner solution.
- If a fix feels hacky, reconsider before finalizing.
- Prefer the simplest correct design that will hold up under normal project evolution.
- Do not over-engineer simple work.

## 6. Autonomous Bug Fixing
- When given a bug, investigate directly and move toward a fix.
- Use logs, errors, failing tests, and surrounding code to identify the root cause.
- Do not ask for hand-holding when the codebase already provides enough context.
- Minimize user context switching.
- Escalate only when uncertainty, missing access, or risk is real.

## 7. Execution Standard
- Fix root causes, not symptoms.
- Avoid temporary workarounds when a proper fix is reasonable.
- Prefer small, reversible, reviewable changes.
- Keep changes as simple as possible while meeting the actual need.

## 8. Communication
- For non-trivial work, briefly state the intended approach before broad changes.
- During longer work, provide concise progress updates.
- At the end, summarize what changed, why it changed, and how it was verified.

## Default Priorities
1. Correctness
2. Clarity
3. Simplicity
4. Maintainability
5. Speed
