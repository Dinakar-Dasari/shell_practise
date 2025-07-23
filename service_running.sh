#! /bin/bash

#### Script to start a service if it's not running ###

service=$1

if [ "systemctl is-active --quiet "$service"" ]
then
    echo "$service is running"
else
    echo "starting the $service"
    systemctl restart "$service"    
fi