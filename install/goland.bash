#!/usr/bin/env bash
set -euo pipefail

if [ -d apps/GoLand-2019.3 ]; then
  echo 'already installed'
  exit 0
fi

curl -L --silent https://download.jetbrains.com/go/goland-2019.3.tar.gz -o download/goland-2019.3.tar.gz
tar -xzf download/goland-2019.3.tar.gz -C apps/
rm download/goland-2019.3.tar.gz
