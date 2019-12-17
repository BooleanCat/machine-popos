#!/usr/bin/env bash
set -euo pipefail

#if [[ "$( docker-compose -v )" =~ '1.25.0' ]]; then
#  echo 'already installed'
#  exit 0
#fi

curl -L --silent https://download.jetbrains.com/go/goland-2019.3.tar.gz -o download/goland-2019.3.tar.gz
tar -xzf download/goland-2019.3.tar.gz -C apps/
rm download/goland-2019.3.tar.gz
