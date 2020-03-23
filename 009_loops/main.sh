#!/bin/bash

NAMES=(Joe Jenny Sara Tony)
for name in ${NAMES[@]}; do
    echo "My name is $name"
done

for f in $(ls ./); do
    echo "File is: $f"
done

COUNT=4
while [ $COUNT -gt 0 ]; do
    echo "Value of count is: $COUNT"
    COUNT=$(($COUNT - 1))
done

COUNT=1
until [ $COUNT -gt 5 ]; do
    echo "Value of count is: $COUNT"
    COUNT=$(($COUNT + 1))
done

####### break and continue
COUNT=0

while [ $COUNT -ge 0 ]; do
    echo "Value of COUNT is: $COUNT"
    COUNT=$(($COUNT + 1))
    if [ $COUNT -ge 5 ]; then
        break
    fi
done


COUNT=0
while [ $COUNT -lt 10 ]; do
    COUNT=$(($COUNT +1))
    if [ $(($COUNT % 2)) = 0 ]; then
        continue
    fi
    echo $COUNT
done