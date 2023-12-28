#!/usr/bin/env bash

input="$1"

if [[ -z "$input" || "$input" =~ ^[[:space:]]*$ ]]; then
  echo "Fine. Be that way!"
  exit
fi

if [[ "$input" = "${input^^}" && "$input" =~ [[:alpha:]] ]]; then
  if [[ "${input: -1}" == "?" ]]; then
    echo "Calm down, I know what I'm doing!"
  else
    echo "Whoa, chill out!"
  fi
  exit
fi

trimmedInput=$(echo "$input" | tr -d '\t\r ')
if [[ "${trimmedInput: -1}" = "?" ]]; then
  echo "Sure."
  exit
fi

echo "Whatever."
