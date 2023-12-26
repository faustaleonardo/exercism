#!/usr/bin/env bash

IFS=" -"
read -ra words <<< "$1"

result=""
for word in "${words[@]}"; do
  for ((i=0; i < ${#word}; i++)); do
    char="${word:i:1}"
    if [[ "$char" =~ [[:alpha:]] ]]; then
      upperChar="${char^^}"
      result+="$upperChar"
      break
    fi
  done
done

echo "$result"