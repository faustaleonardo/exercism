#!/usr/bin/env bash

argsLength=$#
if [ "$argsLength" != 2 ]; then
  echo "Usage: hamming.sh <string1> <string2>"
  exit 1
fi

input1=$1
input2=$2
if [ ${#input1} != ${#input2} ]; then
  echo "strands must be of equal length"
  exit 1
fi

result=0
for ((i = 0; i < ${#input1}; i++)); do
  if [ "${input1:i:1}" != "${input2:i:1}" ]; then
    ((result+=1))
  fi
done

echo "$result"