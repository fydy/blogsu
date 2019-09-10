#!/bin/bash

if [[ $# -ne 0 ]]; then
  url=$1
  curl -s -L $url > /app/src/config/index.js
fi

node scripts/prod-server.js