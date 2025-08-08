#!/bin/bash

## Script for sum of digits of a number ##

read -p "Enter a number: " NUMBER

if [[ -z $NUMBER || ! $NUMBER =~ ^[0-9]+$ ]]
then
    echo "Invalid input. Enter only numbers"
    exit 1
fi

sum=0
for (( i=0; i<${#NUMBER}; i++ ))
do
  digit=${NUMBER:$i:1}
  sum=$(( sum + digit ))
done        

echo "Sum of ${NUMBER} is $sum."