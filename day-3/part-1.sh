#!/usr/bin/env bash

function solve() {
  while read bank; do
    batteries=${#bank}
    first=0
    first_index=0
    second=0

    for (( i=0; i<batteries-1; ++i )); do
      battery=${bank:i:1}
      if [[ $battery -gt $first ]]; then
        first=${battery}
        first_index=$i
      fi
    done

    for (( i=$first_index + 1; i<batteries; ++i )); do
      battery=(${bank:i:1})
      if [[ $battery -gt $second ]]; then second=${battery}; fi
    done

    echo "$first$second"
  done
}

cat "$1" \
  | solve \
  | paste -s -d '+' - \
  | bc
