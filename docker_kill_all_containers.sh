#!/bin/sh

# 
# Purpose: Script to kill all docker containers
# Author: i_virus
# Date: 2017-Jan-05
#

# Show running containers
echo "Running containers (Before)"
docker ps 

# Get all the container IDs
containers=`docker ps -q`

# for each of the found IDs
for c in $containers
do
    # remove the container
    echo "Killing " $c
    docker kill $c
    if [ $? -eq 0 ]
        then
            echo " killed"
        fi
done

# Show running containers
echo "Running containers (After)"
docker ps 