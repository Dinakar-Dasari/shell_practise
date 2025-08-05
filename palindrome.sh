#! /bin/bash

## Script to check whether given string is palindrome or not ##

## read -p "Enter a string: " STR (OR)
echo "enter a string: "
read STR

if [[ $STR =~ ^[a-zA-Z ]+$ ]]  ## space is given after A-Z to include words which have spaces between them
then
    STR=$(echo "$STR" | tr '[:upper:]' '[:lower:]' |tr -d '[:space:]')   
    # shouldn't use $STR (on left side)
    echo $STR
fi

str_rev=$(echo "$STR" |rev)

if [[ "$STR" == "$str_rev" ]]
then
    echo "Entered string is a palindrome"
else
    echo "Entered string is not a palindrome"    
fi
