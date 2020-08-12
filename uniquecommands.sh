#!/bin/bash

#https://www.geeksforgeeks.org/bc-command-linux-examples/?ref=rp

echo "bc command is used for command line calculator"
#It is similar to basic calculator by using which we can do basic mathematical calculations.
#echo "12/4" | bc

x=`echo "12/4" | bc`
echo "output of calculator is $x"

echo "10>5" | bc  # Output 1
echo "1==2" | bc  #Output 0


#arp -a : This option is used for showing entries of the specified host. 
#arp command manipulates the System’s ARP cache. It also allows a complete dump of the ARP cache.

arp -a 