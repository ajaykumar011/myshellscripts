#!/bin/bash
echo "Hello and Welcome to array world"
declare -a arr=(ajay sushil himanshu dushyant)
#arr=(ajay sushil himanshu dushyant)

#echo ${arr[0]}
#echo ${arr[2]}
echo "print all the elements of array:"
echo "Method: 1 ${arr[@]}"
echo "Method:2 ${arr[*]}"

echo "string length is: ${#arr}"   # length of string
echo "1. array length is: ${#arr[@]}"  # length of array using @ as the index
echo "2. array length is: ${#arr[*]}"

for i in "${arr[@]}"
do 
    echo "$i"
done