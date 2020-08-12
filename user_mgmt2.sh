#!/bin/bash
#to find if the user exists in the system or not we can do this by following methods
#grep or awk /etc/passwd file and find out the username
#id command if successful then user exists
#finger command if sucessful then user exists

read -p "Enter your username to get its user id: " user_name
#grep -q -w ${user_name} /etc/passwd # simple
#cut -d":" -f1 /etc/passwd | grep -q -w ${user_name}  #this is more accurate
id ${user_name} > /dev/null 2>&1

#----------------------------------------------------------------------------------
#> file redirects stdout to file
#1> file redirects stdout to file
#2> file redirects stderr to file
#&> file redirects stdout and stderr to file
#2>&1 file redirects stdout and stderr to file
#/dev/null is the null device it takes any input you want and throws it away.
#----------------------------------------------------------------------------------


if [[ "$?" -eq 0 ]];
then   
    echo "User Exists"
else
    echo "User does not exist"
fi
