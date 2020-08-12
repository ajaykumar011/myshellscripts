#!/bin/bash
#for loop with condition. Pleae note to process number we must close this ((<numer>))

for (( i=0; i<=10; i++ ))
do
    if (( i % 2 == 0 )) # are we are dealing with number (( ))
    then    
        echo "$i is even number"
    fi
done

#tty command is used to find the current terminal
# $$ is used to find the current proces of Shell

echo "Terminal is $(tty)"
echo "Shell process is $$"

#Example
# for url in $(cat list_of_urls.txt); do
#   curl "$url" >> everywebpage_combined.html
# done

#Example -2 - This is print the size of the folders in the file

for line in $(cat list-of-dirs.txt)
do
   echo "Directories name is $line"
   du -sh $line
done

# ajay@digi2:~/myshell$ cat list-of-dirs.txt 
# /etc/skel
# /var/
# /tmp
# /mnt

# Rev command is used to reverse any entry.
# user@host:~$ echo "hello world i am here" | rev
# ereh ma i dlrow olleh