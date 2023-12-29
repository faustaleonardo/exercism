#!/usr/bin/env bash

input=$1
ans=0

if [[ $input = "total" ]]; then
  for ((i = 1; i <= 64; i++)); do
    result=$(echo "2 ^ ($i - 1)" | bc)
    ans=$(echo "$ans" + "$result" | bc)
  done
  echo "$ans"
  exit
fi

if ((input < 1 || input > 64)); then
  echo "Error: invalid input"
  exit 1
fi

ans=$(echo "2 ^ ($input - 1)" | bc)
echo "$ans"