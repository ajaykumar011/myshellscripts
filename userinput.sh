#!/bin/bash
clear
now=$(date +"%m_%d_%Y")
echo "Today is $now"
read -p "Enter your name: " name
echo "Hello $name"

read -e -p "Enter Your Nationality: " -i "India" country
if [[ $country != "India" ]]; then
	echo "You are not allowed to vote"
	exit 1
fi
echo "Great Welcome to India voting system"