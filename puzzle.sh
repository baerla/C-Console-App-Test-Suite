#!/bin/bash

# usage: ./puzzle.sh <*/main.cpp> <*/tests.txt> <lines per puzzle>

g++ -std=c++11 -Wall $1

while read c; do
  for ((i = 0 ; i < $3 ; i++)); do
    echo "$c" | ./a.out
  done
done < $2

