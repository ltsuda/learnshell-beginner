#!/bin/bash

a=(3 5 8 10 6)
b=(6 5 4 12)
c=(14 7 5 7)

for a_element in "${a[@]}"; do
    for b_element in "${b[@]}"; do
        if [ $a_element = $b_element ]; then
            z[${#z[@]}]=$a_element
        fi
    done
done

for c_element in "${c[@]}"; do
    for z_element in "${z[@]}"; do
        if [ $c_element = $z_element ]; then
            j[${#j[@]}]=$c_element
        fi
    done
done

echo "The common elements between the arrays a, b and c are: ${j[@]}"