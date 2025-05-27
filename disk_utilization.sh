#! /bin/bash

disk_command=$(df -hT | awk 'NR>1 {print}')
#disk_command=$(df -hT | grep -iv "filesystem")   $different method
threshold="3"
file_name=$(basename "$0" .sh)
log_file="/tmp/$file_name.log"

#echo "$disk_command"

echo "script executed at $(date +'%D %T')" &>> "$log_file"

while IFS= read -r file 
do
  usage=$(echo "$file" | awk '{print $6}' | tr -d "%")
  file_system=$(echo "$file" | awk '{print $1}') 
  if [ $usage -gt $threshold ]
  then
    echo "Filesystem $filesystem has High disk usage of $usage%..please check" &>> $log_file
  fi 
done <<< "$disk_command"