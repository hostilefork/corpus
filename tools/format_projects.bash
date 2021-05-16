#!/bin/bash

# Format JSON and sort by decreasing date, then name
# npm install -g underscore-cli
# https://github.com/ddopson/underscore-cli
underscore print -i projects.json |
  jq -c '[group_by(.date)[] | sort_by(.name)] | sort_by(.[0].date) | reverse | map(.[])' |
  underscore print |
  tools/sponge projects.json