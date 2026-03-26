#!/bin/bash
set -euo pipefail

if systemctl list-unit-files | grep -q '^cicdtestivan\.service'; then
  systemctl stop cicdtestivan || true
fi
