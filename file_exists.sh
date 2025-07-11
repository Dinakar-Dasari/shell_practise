#! /bin/bash

###############################################################
# Script to check if a file exists
# Author: Dinakar
# Date: 7/10/2024
# last_modified date: 
################################################################

red='\e[31m'
none='\e[0m'
green='\e[32m'
yellow='\e[33m'
file=$1

#check whether user passed any argument

if [[ -f $1 ]]
then
    echo "$file exists..!"
else
    echo -e "${red}$file not present in the current diectory, Please provide absolute path${normal}" 
fi       

