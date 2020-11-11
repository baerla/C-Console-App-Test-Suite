#!/bin/bash

# usage: ./solution.sh <*/solution.txt>

n=0
error=false
while read i && read s <&3; do
  n=$((n+1))
  if [ "$i" != "$s" ]; then
      echo -e "\e[41mMistake in puzzle $n: $i should be $s"
      error=true
  fi
  shift 1
done <&0 3< $1

echo $? > /dev/null

if [ $error == false ]; then
  echo -e "\e[42mNo errors occurred!"
fi
