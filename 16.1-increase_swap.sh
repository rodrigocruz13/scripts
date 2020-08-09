#!/bin/bash

COLOR='\033[1;93m'
COLOR1='\033[1;96m'
NC='\033[0m' # No Color



CURRENT=$PWD
cd $HOME

# size of swapfile in megabytes
swapsize=8000
printf "\n\t${COLOR}Increasing size of swap file to ${swapsize}${NC}\n"

# does the swap file already exist?
grep -q "swapfile" /etc/fstab

# if not then create it
if [ $? -ne 0 ]; then
  printf "\n\Swapfile not found. Adding swapfile"
  fallocate -l ${swapsize}M /swapfile
  chmod 600 /swapfile
  mkswap /swapfile
  swapon /swapfile
  echo '/swapfile none swap defaults 0 0' >> /etc/fstab
else
  echo 'swapfile found. No changes made.'
fi

# output results to terminal
df -h
cat /proc/swaps
cat /proc/meminfo | grep Swap

cd $CURRENT
