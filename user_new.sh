#!/bin/bash
clear
if [[ ${UID} -ne 0 ]];
then
    echo "your are not root"
    exit 1
fi
read -p "Enter your username to create: " user_name
read -p "Enter your full name: " user_full_name
read -p "Enter your password: " user_password

#with checking existing user
id -u ${user_name}  &>/dev/null || useradd -c "${user_full_name}" -m ${user_name}  
#without checing existing user normal
#useradd -c "${user_full_name}" -m ${user_name}

#password --stdin 
#echo ${user_password} | passwd --stdin ${user_name}    # this is pipe operator not working with debian
echo -e "$user_password\n$user_password" | passwd "$user_name" # for debian

#password expire immediately and prompt to enter new password in next login
passwd -e ${user_name}

echo "Details about new user"
id ${user_name}
