#!/usr/bin/env bash
set -euo pipefail

if [[ "$( docker-compose -v )" =~ '1.25.0' ]]; then
  echo 'already installed'
  exit 0
fi

curl -L --silent "https://github.com/docker/compose/releases/download/1.25.0/docker-compose-$( uname -s )-$( uname -m )" -o apps/bin/docker-compose
chmod +rx apps/bin/docker-compose
