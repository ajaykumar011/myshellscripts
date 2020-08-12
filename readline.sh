#!/bin/bash
#this is 

if [[ "${UID}" -ne 0 ]]; then 
    echo "You are not root"
    exit 1
fi

filename='/etc/passwd'
n=1
while read line; do
    # reading each line
    echo "Line No. $n : $line"
    n=$((n+1))
done < $filename


#Reading file by omitting backslash escape we use -r parameters
#while read -r line; do