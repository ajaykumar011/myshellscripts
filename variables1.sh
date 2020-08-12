#!/bin/bash

#i=0
let "i=0"
let "j=5"
echo "Hello"
WORD='script'
echo "I love $WORD"
echo "I love ${WORD}ing"

WORD='Linux'
echo "Now I love $WORD"

(( j += i + 5 ))
echo $j