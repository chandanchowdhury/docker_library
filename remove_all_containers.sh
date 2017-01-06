#!/bin/sh

# 
# Purpose: Script to remove all docker containers
# Author: i_virus
# Date: 2017-Jan-05
#

# Get all the container IDs
containers=`docker ps -qa`

# for each of the found IDs
for c in $containers
do
    # remove the container
    echo "Removing " $c
    docker rm $c
    if [ $? -eq 0 ]
        then
            echo " Removed"
        fi
done