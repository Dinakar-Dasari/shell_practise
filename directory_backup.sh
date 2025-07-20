#! /bin/bash

source=$1
destination="/media/dd/epic1/documents"
set -e

if ! [[ -d "$1" ]]
then 
    echo "Invalid directory. Provide a valid directory"
    exit 1
fi

## create file name
date=$(date +"%F:%T")
filename="$(basename "$1")_$date.tar.gz"

# Create the archive
tar -czf "$destination/$filename" -C $1 .

#C flag will change to that directory before archieving since, when we provide full path, it will create maintain the dir

# Check if tar succeeded
if [[ $? > 0 ]]
then
    echo "File creation failed"
    exit 1
else
    echo "Backup file $filename is successfully created at $destination"
fi        