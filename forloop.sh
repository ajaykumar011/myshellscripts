#!/bin/bash

#seq command in Linux is used to generate numbers from FIRST to LAST in steps of INCREMENT. 
#It is a very useful command where we had to generate list of numbers in while, for, until loop.

seq 1 10
seq 10 2 20  #first Increment Last

#i=5
for i in 1 5 7 10
do 
    echo "Value is in  the list $i"
done

for j in  {1..10} {20..30}
do 
    echo "$j"
done

for i in `seq 10 2 20`
do 
    echo "Value is in  the list $i"
done

#look command which is very easy to use than find or grep .
#look 'string' filename with path
echo "We have use below loop in this file"
look 'for' $0