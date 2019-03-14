#!/bin/bash
set -e
set -o pipefail

action=$(jq --raw-output .action "$GITHUB_EVENT_PATH")
merged=$(jq --raw-output .pull_request.merged "$GITHUB_EVENT_PATH")

echo "DEBUG -> action: $action merged: $merged"

if [[ "$action" == "closed" ]] && [[ "$merged" == "true" ]]; then
  exit 0
fi
exit 78
