#!/usr/bin/env bash

function solve() {
  while read line; do
    IFS='-' read -ra range <<< "$line"
    start=${range[0]}
    end=${range[1]} 
    for (( i=start; i<=end; i++ )); do echo $i; done
  done
}

cat "$1" \
  | tr ',' '\n' \
  | solve \
  | grep -E '^([0-9]+)\1+$' \
  | paste -s -d '+' - \
  | bc
