#!/usr/bin/env bash

function solve() {
  while read -r bank; do
    target=12
    stack=()
    remaining=${#bank}

    for (( i=0; i<${#bank}; i++ )); do
      battery=${bank:i:1}

      while (( ${#stack[@]} > 0 )); do
        top_idx=$(( ${#stack[@]} - 1 ))
        last=${stack[$top_idx]}

        if (( last < battery && (${#stack[@]} + remaining - 1) >= target )); then
          unset "stack[$top_idx]"
        else
          break
        fi
      done

      if (( ${#stack[@]} < target )); then
        stack+=("$battery")
      fi

      ((remaining--))
    done

    echo "${stack[@]}" | tr -d ' '
  done
}

cat "$1" \
  | solve \
  | paste -s -d '+' - \
  | bc
