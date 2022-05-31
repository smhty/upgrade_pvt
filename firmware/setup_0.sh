#!/bin/bash 
# variables
dir_temp="/home/dorna/Downloads/firmware_temp"
repo="https://github.com/smhty/firmware.git"

# remove and reopen the folder
rm -rf $dir_temp
mkdir $dir_temp

# clone the repo
git clone $repo $dir_temp

# update config.txt and rc.local
python3 firmware.py

# run the update
cd $dir_temp
sh upgrade.sh

# remove tmp folder
rm -rf $dir_temp