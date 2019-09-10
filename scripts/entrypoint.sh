#!/bin/bash

base="/app/src/config/"
mkdir -p $base
if [[ $# -ne 0 ]]; then
  url=$1
  curl -s -L $url > "${base}index.js"
fi

node scripts/prod-server.js