#!/bin/bash
echo "Here is your SHELL: $SHELL"
echo "Here is your path: $PATH"

#Another method to get the same informatoin
echo "Here is your path information from antoher method:"
echo "--------------------------------------------------"
printenv | grep PATH |  cut -d'=' -f2 