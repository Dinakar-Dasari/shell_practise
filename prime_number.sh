#! /bin/bash

## script to check whether a number is prime or not  ##

number=$1
count=0
if [[ -z $number ]]
then
    echo "usage is $0 <number>"
fi

for (( i=2; i<number; i++ ))
do
  if (( number % i == 0))  ## Inside (()), variables are automatically evaluated — so you omit the $.
  then
    count=1
    break  #break to exit early — we already know the number is not prime, when there is a divisor 
  fi
done

if (( count == 0 ))
then
    echo "$number is a prime number"
else
    echo "$number is not a prime number"
fi    
