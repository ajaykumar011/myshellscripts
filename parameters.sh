#!/bin/bash
echo $$  # to get the pid of 

#$0 -The filename of the current script.
#$n like $1 $2 $3 -These variables correspond to the arguments with which a script was invoked. 
#$# - The number of arguments supplied to a script.
#$* - All the arguments are double quoted. If a script receives two arguments, $* is equivalent to $1 $2.
#$@ -All the arguments are individually double quoted. If a script receives two arguments, $@ is equivalent to $1 $2.

echo "File Name: $0"
echo "First Parameter : $1"
echo "Second Parameter : $2"
echo "Quoted Values: $@"
echo "Quoted Values: $*"
echo "Total Number of Parameters : $#"

