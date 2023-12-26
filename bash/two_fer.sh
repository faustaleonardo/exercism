#!/usr/bin/env bash

name=$1

if [ "$name" = "" ]; then
  echo "One for you, one for me."
else
  echo "One for $1, one for me."
fi
