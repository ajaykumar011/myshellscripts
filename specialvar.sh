#!/bin/bash

#Display the username and uid executing the scirpt
if [[ "${UID}" -eq 0 ]] 
then 
    echo "You are root"
    echo "your username is ${USER}"
    #USER_NAME='id -un'
    USER_NAME=$(id -un)
    echo "you username from another method is $USER_NAME"
    echo "your uid id ${UID}"
    echo "your group id ${GROUPS}"
else
    echo "you are not root"
    echo "you are ${USER}"
    exit 1
fi


#to Display the contents of any command we can use ( )
echo "Today is $(date)"
