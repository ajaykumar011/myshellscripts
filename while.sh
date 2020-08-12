#!/bin/bash
type -a while
#i=0
let "i=0"
#while [[ ${i} -le 10 ]]
while (( i <= 10))
do
    echo "The value of X: ${i}"
    #i=$((i+1))
    ((i++))
    # ((i+=1))
    # let "i=i+1"
    # let i++
    # i=`expr $i + 1`
done
unset i # to unset the value of variable

#STRING COMPARASION
# var1 = var2     checks if var1 is the same as string var2
# var1 != var2    checks if var1 is not the same as var2
# var1 < var2     checks if var1 is less than var2
# var1 > var2     checks if var1 is greater than var2
# -n var1             checks if var1 has a length greater than zero
# -z var1             checks if var1 has a length of zero

#NUMERIC COMPARASION
# num1 -eq num2                  check if 1st  number is equal to 2nd number
# num1 -ge num2                  checks if 1st  number  is greater than or equal to 2nd number
# num1 -gt num2                  checks if 1st  number is greater than 2nd number
# num1 -le num2                   checks if 1st number is less than or equal to 2nd number
# num1 -lt num2                   checks if 1st  number  is less than 2nd number
# num1 -ne num2                  checks if 1st  number  is not equal to 2nd number