#!/bin/bash
# Stop hook: if repo files changed this session but tasks/worklog.md was not
# updated, remind Claude once before it stops. stop_hook_active guards
# against blocking in a loop.

input=$(cat)

# Already continuing because of this hook -> let the agent stop.
if echo "$input" | grep -q '"stop_hook_active"[[:space:]]*:[[:space:]]*true'; then
  exit 0
fi

cd "${CLAUDE_PROJECT_DIR:-.}" 2>/dev/null || exit 0
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || exit 0

status=$(git status --porcelain 2>/dev/null)
[ -z "$status" ] && exit 0

changed_other=$(echo "$status" | grep -cv 'tasks/worklog\.md')
worklog_touched=$(echo "$status" | grep -c 'tasks/worklog\.md')

if [ "$changed_other" -gt 0 ] && [ "$worklog_touched" -eq 0 ]; then
  cat <<'EOF'
{"decision": "block", "reason": "Worklog guard: repository files changed in this session but tasks/worklog.md was not updated. If meaningful work was done, append a worklog entry (format: docs/ai-workflow.md > Worklog Format) and run the Close-out Checklist. If the changes are trivial or work is still in progress, you may stop after briefly stating why no worklog entry is needed."}
EOF
  exit 0
fi

exit 0
