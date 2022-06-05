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
/home/dorna/Downloads/dorna_venv/bin/python3 firmware.py

# run the update
cd $dir_temp

# installation
/home/dorna/Downloads/dorna_venv/bin/pip3 install -r requirements.txt --upgrade --force-reinstall
/home/dorna/Downloads/dorna_venv/bin/python3 ENC.py
/home/dorna/Downloads/dorna_venv/bin/python3 Unlock_Flash.py
/home/dorna/Downloads/dorna_venv/bin/python3 Firmware_Upgrade.py
/home/dorna/Downloads/dorna_venv/bin/python3 Lock_Flash.py

# remove tmp folder
rm -rf $dir_temp