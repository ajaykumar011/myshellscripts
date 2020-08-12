#!/bin/bash
#Masti with users in linxu
echo "Here is the list of users"
cat /etc/passwd | cut -d":" -f1  #print usernmae
cat /etc/passwd | cut -d":" -f1,3  #print username with uid
cat /etc/passwd | cut -d":" -f1,3 --output-delimiter=',' #print with delimeter 

read -p "Enter your username to get its user id: " user_name
user_id=$(id -u $user_name)
echo "Your userid is ${user_id}"
groups_list=$(groups ${user_name})
echo "Your groups are ${groups_list}"
