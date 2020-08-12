#!/bin/bash
#this example create a user by taking parameter as variable. only 2 parameters are required
#user name and #comment as full name. We use shift comand here to define first parameter as user
#name and shift rest of parameters as full name (comment)

#root checking 

if [[ "${UID}" -ne 0 ]]; then
    echo "you are not root"
    exit 1
fi

if [[  "${#}" -lt 1 ]]; then 
    echo "USAGE: ${0} USER_NAME [COMMENT]..."
    echo 'Create an accont on the local system with username and comment'
    exit 1
fi
#username from parameter 1
USER_NAME="${1}"

shift  #shift the parameters one step hence user_name parameters shifted and there in only comments
COMMENT="${@}" #rest all the parameters are comments
#generating password
PASSWORD=$(date +%s%N | sha256sum | head -c8)
#PASSWORD=$(openssl rand -base64 12 | tr -dc A-Za-z | head -c 8 ; echo '')

useradd -c "${COMMENT}" -m ${USER_NAME} #comment in " "becuase they may contain spaces

if [[ "${?}" -ne 0 ]]; then 
    echo "The account can not be crated "
    exit 1
fi

#set the password of the user after creting a user
#echo ${PASSWORD} | passwd --stdin {USER_NAME} #for RHEL
echo -e "$PASSWORD\n$PASSWORD" | passwd "$USER_NAME" # for debian
passwd -e ${USER_NAME}  #passwor expire to make this one time.

echo "USER INFORMATION"
echo "-----------------------------"
echo "username : ${USER_NAME}"
echo ''
echo "password : ${PASSWORD}"
echo ''
echo "host : ${HOSTNAME}"






















#echo "First Parameter : $1"
#echo "Second Parameter : $2"
#echo "Quoted Values: $@"
#echo "Quoted Values: $*"
#echo "Total Number of Parameters : $#"

