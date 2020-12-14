#!/bin/bash

# usage: ./puzzle.sh <*/main.cpp> <*/tests.txt> <lines per puzzle>

g++ -std=c++11 -Wall $1

while read c; do
  input=()
  #echo -e $c
  input[0]=$c
  for (( i = 1; i < $3; i++ )); do
      read c
      input[$i]=$c
      #echo -e "$c"
  done
  #echo -e "${input[*]}"
  echo -e "${input[*]}" | ./a.out
done < $2

