#!/bin/bash
set -euo pipefail

for i in {1..12}; do
  if curl --fail --silent http://localhost:8080/ >/dev/null; then
    exit 0
  fi

  sleep 5
done

exit 1
