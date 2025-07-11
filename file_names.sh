#! /bin/bash

###############################################################
# loop through all the files in a directory
# Author: Dinakar
# Date: 7/11/2024
# last_modified date: 
################################################################

directory=$1

if [[ -d "$directory" ]]
then
    for file in "${directory}"/*   ##"" is mandatory, * outside the quotes tells Bash: "List all the files and folders under this path.
    do
        echo ${file}  "print all the files inside the directory"
    done
else
    echo "invalid path"
fi            
