#!/bin/bash

# usage: ./test.sh <*/main.cpp> <*/tests.txt> <lines per puzzle> <*/solution.txt>

./puzzle.sh $1 $2 $3 | ./solution.sh $4

rm a.out
