#!/usr/bin/env bash

input=$1
result=""

if [ $((input % 3)) = 0 ]; then
  result+="Pling"
fi
if [ $((input % 5)) = 0 ]; then
  result+="Plang"
fi
if [ $((input % 7)) = 0 ]; then
  result+="Plong"
fi
if [ $((input % 3)) != 0 ] && [ $((input % 5)) != 0 ] && [ $((input % 7)) != 0 ]; then
  result+="$input"
fi

echo "$result"