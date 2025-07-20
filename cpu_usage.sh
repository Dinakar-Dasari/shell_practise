#! /bin/bash

###############################################################
# Check cpu usage and send alert to user
# Author: Dinakar
# Date: 7/14/2024
# last_modified date: 
################################################################


red="\e[31m"
green="\e[32m"
yellow="\e[33m"
normal="\e[0m"

set -e
threshold=80

## basically top run on interactive mode. So, -b means batch mode which means it runs on non-interactive mode and refreshing the output at regular intervals (default is ~3 seconds) until interrupted
## so we tell that to run only one iteration by using command -n1


idle_percentage=$(top -bn1 | grep 'Cpu(s)' | awk '{print $8}')
cpu_usage=$(echo "100 - $idle_percentage" | bc)  ##bc for basic calculation
cpu_usage=$(printf "%.0f\n" "$cpu_usage")
if [[ $cpu_usage > $threshold ]]
then
    echo -e "High CPU usage: ${red}$cpu_usage%${normal}"
else
    echo -e "CPU usage is normal: ${green}$cpu_usage%${normal}"
fi        