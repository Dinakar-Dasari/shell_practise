#! /bin/bash

### Factorial of a number ###

read -p "Enter a number to find factorial: " NUMBER
if [[ -z "$NUMBER" || ! "$NUMBER" =~ ^[0-9]+$ ]]
then
    echo "Enter a valid number."
    exit 1
fi

factorial=1
for (( i=1; i<="$NUMBER"; i++ ))
do
    factorial=$(( factorial*i ))
done    

echo "Factorial of $NUMBER is $factorial"