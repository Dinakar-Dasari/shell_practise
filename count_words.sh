#? /bin/bash


#### script to check the top 5 repeated words in a text file ##

set -e
if [ -z $1 ]
then
    echo "No file is provided to check"
    exit 1
fi    

if ! [ -f $1 ]
then
    echo "Invalid file provided/file not exists"
    exit 1
fi

cat $1 | 
tr [:upper:] [:lower:] |
tr -c [:alnum:] "\n" |  # translate everything expect(-c) alphabets and numerics
grep -Ev "^$" |         #show all words expect empty lines 
sort | uniq -c |
sort -nr | head -n 5  