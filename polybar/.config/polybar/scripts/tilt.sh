#!/usr/bin/env bash
set -euo pipefail

if ! pgrep -f "tilt up" > /dev/null; then
  echo "Down"
  exit 0
fi

tiltResource="$(tilt get uiresource -o json 2>/dev/null || true)"
if [[ -z "$tiltResource" ]]; then
  echo "No resource :("
  exit 0
fi

ready="$(jq '[.items[]
         | select(any(.status.conditions[]?; .type=="Ready" and .status=="True"))
       ] | length'<<<"$tiltResource")"

total="$(jq '.items | length' <<<"$tiltResource")"

service="$(systemctl --user list-units --type=service --state=running 'tilt@*.service' \
      --no-legend --no-pager 2>/dev/null \
    | awk '{print $1}' \
    | head -n1 \
    | sed 's/tilt@\(.*\)\.service$/\1/')"

echo "$service $ready/$total"

