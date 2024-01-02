#!/usr/bin/env bash

argsLen=$#
if (( argsLen != 2 )); then
  echo "Error: Invalid Input"
  exit 1
fi

x=$1
y=$2
if [[ ! $x =~ ^[+-]?[0-9]*\.?[0-9]+$ || ! $y =~ ^[+-]?[0-9]*\.?[0-9]+$ ]]; then
  echo "Error: Invalid Input"
  exit 1
fi

result=0
distance=$(echo "sqrt($x^2 + $y^2)" | bc -l)
if (( $(echo "$distance > 5 && $distance <= 10" | bc -l) )); then
  result=1
elif (( $(echo "$distance > 1 && $distance <= 5" | bc -l) )); then
  result=5
elif (( $(echo "$distance <= 1" | bc -l) )); then
  result=10
fi

echo $result