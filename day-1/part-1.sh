#!/usr/bin/env bash

function solve() {
  dial=50
  while read change; do
    dial=$(( (dial + change) % 100 ))
    (( dial == 0 )) && echo 'tick'
  done
}

cat "$1" \
  | tr 'RL' '+-' \
  | solve \
  | grep -c '^tick$'
