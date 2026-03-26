#!/bin/bash
set -euo pipefail

systemctl enable cicdtestivan
systemctl restart cicdtestivan
