#!/usr/bin/env bash
set -euo pipefail

if [[ "$( golangci-lint --version )" =~ '1.21.0' ]]; then
  echo 'already installed'
  exit 0
fi

curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b /home/tom/workspace/machine-popos/apps/bin v1.21.0
