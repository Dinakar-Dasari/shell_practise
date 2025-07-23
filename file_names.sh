#! /bin/bash


###############################################################
# loop through all the files in a directory and move to a new folder
# Author: Dinakar
# Date: 7/11/2024
# last_modified date: 
################################################################

directory=$1
target_directory=$2
set -e

if [[ -d "$directory" ]]  ## to validate directory exists or not
then
##"" is mandatory, * outside the quotes tells Bash: "List all the files and folders under this path.
    for file in "${directory}"/*    # "* expands to the full path when used after a path like /some/path/* "
    do
        name=$(basename $file)

        if ! [[ $name == "concepts" || $name == "project" ]]
        then
            mv $directory/$name $target_directory
        fi    
    done
else
    echo "invalid path"
    exit 1 
fi            
