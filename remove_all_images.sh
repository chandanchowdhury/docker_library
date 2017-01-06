#!/bin/sh

# 
# Purpose: Script to remove all docker images
# Author: i_virus
# Date: 2017-Jan-05
#

# Get all the imageIDs
containers=`docker images -q`

# for each of the found IDs
for c in $containers
do
    # remove the image
    echo "Removing " $c
    docker rmi $c
    if [ $? -eq 0 ]
        then
            echo " Removed"
        fi
done