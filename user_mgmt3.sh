#!/bin/bash
RIGHT_NOW=$(date +"%x %r %Z")
echo  "Time is : ${RIGHT_NOW}"
echo "The process id of shell: " $$  # to get the pid of shell
echo "Total Number of Parameters : $#"
if [[ "$#" -eq 0 ]]; then echo "No parameters Bye"; exit 1; fi

if [[ "$1" == "userlist" ]];
then 
    echo "Printing user list"
    cut -d":" -f1 /etc/passwd | tail -5
elif [[ "$1" == "userinfo" ]];
then    
    echo "Printing username of current user"    
    echo ${USER}
else
    echo "Thank you"
    exit 1
fi

#echo "First Parameter : $1"
#echo "Second Parameter : $2"
#echo "Quoted Values: $@"
#echo "Quoted Values: $*"
#echo "Total Number of Parameters : $#"

