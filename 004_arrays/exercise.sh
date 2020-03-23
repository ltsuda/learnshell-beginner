#!/bin/bash
NAMES=( John Eric Jessica )
# write your code here
NUMBERS=(1 2 3)
STRINGS=("Hello" "world")

NumberOfNames=${#NAMES[@]}
echo $NumberOfNames
second_name=${NAMES[1]}
echo $second_name