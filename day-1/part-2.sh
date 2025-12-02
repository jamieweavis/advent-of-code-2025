#!/usr/bin/env bash

function solve() {
  dial=50
  while read change; do
    clicks=${change:1}
    direction=$((change > 0 ? 1 : -1))
    for (( i=1; i<=${clicks}; i++ )); do
      dial=$(( (dial + direction) % 100 ))
      (( dial == 0 )) && echo 'tick'
    done
  done
}

cat "$1" \
  | tr 'RL' '+-' \
  | solve \
  | grep -c '^tick$'
