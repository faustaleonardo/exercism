#!/usr/bin/env bash

input=$1
binary=$(echo "obase=2; $input" | bc)
declare -A set=(
  ["0"]="wink" ["1"]="double blink" ["2"]="close your eyes"
  ["3"]="jump"
)

ans=""
len=${#binary}
for (( i=len-1; i >= 0; i-- )); do
  digit=${binary:i:1}
  idx=$((len - 1 - i))

  if (( digit == 0)); then 
    continue
  elif (( idx <= 3 )); then
    # add "," if the ans is not empty
    [ -n "$ans" ] && ans+=","
    ans+=${set[$idx]}
  else
    ans=$(echo "${ans}" | awk -F, '{ for(i=NF;i>0;i--) printf "%s%s", $i, (i>1 ? "," : ""); printf "\n" }')
  fi
done

echo "$ans"