#!/bin/bash
upgrade="firmware"

dir="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

for val in $upgrade; do
    cd $dir/$val
    sh setup_0.sh
done

echo "aliali1"
# remove the directory
rm -rf $dir

echo "aliali2"

# go to the starting position
cd ~
# run upgrade
rm -rf /home/dorna/Downloads/upgrade && mkdir /home/dorna/Downloads/upgrade && git clone https://github.com/dorna-robotics/upgrade.git /home/dorna/Downloads/upgrade && cd /home/dorna/Downloads/upgrade && sh setup_0.sh