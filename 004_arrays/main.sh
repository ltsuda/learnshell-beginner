#!/bin/bash
my_array=(apple banana "Fruit Basket" orange)
echo $my_array
new_array[2]=apricot
echo $new_array #will print nothing

echo "The number of elements of my_array is: ${#my_array[@]}"

echo "The first item on the list is: ${my_array[0]}"
my_array[4]="carrot"
echo ${#my_array[@]}
echo ${my_array[${#my_array[@]}-1]}