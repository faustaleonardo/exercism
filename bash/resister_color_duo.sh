#!/usr/bin/env bash

declare -A set=(
  ["black"]=0 ["brown"]=1 ["red"]=2 ["orange"]=3 ["yellow"]=4
  ["green"]=5 ["blue"]=6 ["violet"]=7 ["grey"]=8 ["white"]=9
)

if [[ "$#" -lt 1 || ! ${set["$1"]} || ! ${set["$2"]} ]]; then
  echo "invalid color"
  exit 1
fi

ans=$(echo "${set["$1"]}${set["$2"]}" | sed 's/^0*//')
echo "$ans"