#! /bin/bash

# read -p "Enter a string: " WORD

#### This is not preferable, because 
## Not pure Bash – it uses 3 external commands. Each command starts a subprocess, which is costly for performance (especially in loops or large input sets).
# if [[ -z $WORD || ! $WORD =~ ^[a-zA-Z]+$ ]]
# then
#     echo "Invalid input. Enter only characters."
#     exit 1
# else
#     count=$(echo $WORD | tr [:upper:] [:lower:] | grep -o '[aeiou]' | wc -l)
#     echo "Number of vowels in '$WORD' are '$count'"
# fi    

# ------------------------------------------------------------------------------------- #

read -p "Enter a string: " WORD
if [[ -z $WORD || ! $WORD =~ ^[a-zA-Z]+$ ]]
then
    echo "Invalid input. Enter only characters."
    exit 1
else
    WORD_LOWER=${WORD,,}   ## convert to lower chars
    count=0
    for (( i=0; i<${#WORD_LOWER}; i++ ))
    do
      char=${WORD_LOWER:$i:1}
      if [[ $char == [aeiou] ]]
      then
          ((count++))
      fi    
    done
fi      

echo "Number of vowels in '$WORD' are '$count'"