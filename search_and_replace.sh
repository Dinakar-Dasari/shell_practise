#! /bin/bash

## script to find and replace a specific string in multiple text files in a directory.

file=$1
word_to_be_replaced=$2
new_word=$3
set -e

## To check if user provided inputs or not ##
if [[ -z "$1" && -z "$2" && -z "$3" ]]
then
    echo "Invalid syntax. Please include file name, word to be replaced and new word"
    exit 1
## To check if file is valid    
elif ! [[ -f "$1" ]]    
then
    echo "invalid file name"
    exit 1
## To check if word_to_be_replaced is a string    
elif ! [[ "$2" =~ ^[a-zA-Z]+$ && "$3" =~ ^[a-zA-Z]+$ ]]   
then
    echo "Enter only string variables"
    exit 1
## To check if new_word is a string       
elif [[ "$2" == "$3" ]] 
then
    echo ""$word_to_be_replaced" and "$new_word" are same. Please check"
    exit 1
fi 

sed -i "s/"$word_to_be_replaced"/"$new_word"/g" $file

if [[ $? == 0 ]]
then
    echo "replaced successfully"
else
    echo "Not replaced the word"
fi        