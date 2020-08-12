#!/bin/bash

#we are generating databasename and username from /dev/urandom command. 
dbname=$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 8 ; echo '');
# TR Command Translate, squeeze, and/or delete characters from standard input,writing to standard output.
#-d delte the old set and -c create a new site with A-Z, a-z,0-9

#we are generating username from openssl command but we are squeezing only A-Z and a-z from TR command and Head takes on 8 characters
dbuser=$(openssl rand -base64 12 | tr -dc A-Za-z | head -c 8 ; echo '')

#Openssl is another way to generating 64 characters long password)
#dbpass=$(openssl rand -hex 8); #It generates max 16 digits password we can also use this for all above process.

MYSQL_PASS=$(openssl rand -base64 12); #this is root password of mysql of 12 characters long. we are not filetring anything here. 

#Only digits and letters
PASSWORD=$(date +%s%N | sha256sum | head -c8) #this generates passwords with digits and letters only

echo $dbname
echo $dbuser
echo $MYSQL_PASS
echo $PASSWORD
