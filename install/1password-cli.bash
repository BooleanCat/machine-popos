#!/usr/bin/env bash
set -euo pipefail

if [ "$( op -v )" == '0.8.0' ]; then
  echo 'already installed'
  exit 0
fi

curl -L --silent https://cache.agilebits.com/dist/1P/op/pkg/v0.8.0/op_linux_amd64_v0.8.0.zip -o download/op_linux_amd64_v0.8.0.zip

unzip -o download/op_linux_amd64_v0.8.0.zip -d apps/bin/

rm download/op_linux_amd64_v0.8.0.zip
rm apps/bin/op.sig

