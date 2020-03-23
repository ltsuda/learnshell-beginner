#!/bin/bash

array=(23 45 34 1 2 3)
#third value
echo ${array[2]}

#all elements
echo ${array[@]}

#number of elements
echo ${#array[@]}