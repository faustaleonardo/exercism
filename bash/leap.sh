#!/usr/bin/env bash

input=$1

if [[ $# != 1 || ! $input =~ ^[0-9]+$ ]]; then
  echo "Usage: leap.sh <year>"
  exit 1
fi

if (( (input % 4 == 0 && input % 100 != 0) || input % 400 == 0 )); then
  echo "true"
else
  echo "false"
fi