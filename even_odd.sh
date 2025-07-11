#! /bin/bash   #Ensures the script runs with the expected shell (bash)

###############################################################
# Script for finding out a number even or odd
# Author: Dinakar
# Date: 7/9/2024
# last_modified date: 
################################################################

red='\e[31m'
none='\e[0m'
green='\e[32m'
yellow='\e[33m'
number=$1
even=''
odd=''

# To validate that the enter input is a integer.
: '
^ = start of string
[0-9]+ = one or more digits
$ = end of string
why $
^[0-9]+$ → Strictly all-digits.
^[0-9]+ → Starts with digits (more flexible)  12abc is also becomes valid if not given $
'

if ! [[ $1 =~ ^[0-9]+$ ]]
then
    echo -e "${red}Invalid input.Enter a valid integer ${none}"
    exit 1
fi

for (( i=0; i<=$1; i++ ))   # ican also write without space. Space is only for if
do
    if (($i%2==0))   ##(()) for mathametical operators
    then
        even+="$i "
    else
        odd+="$i "   
    fi
done

echo -e "even number are ${green} ${even} ${none}"
echo -e "odd number are ${yellow} ${odd} ${none}"