#!/usr/bin/env bash

declare -A set
input="$1"

for ((i = 0; i < ${#input}; i++)); do
  char="${input:i:1}"
  if [[ "$char" =~ [[:alpha:]] ]]; then
    lowerCase="${char,,}"
    set["$lowerCase"]+=1
  fi
done

if [[ ${#set[@]} -eq 26 ]]; then
  echo "true"
else
  echo "false"
fi