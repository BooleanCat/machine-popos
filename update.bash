#!/usr/bin/env bash
set -euo pipefail

ansible-playbook \
  -i 'localhost,' \
  --ask-become-pass \
  --con local \
  playbook.yml
