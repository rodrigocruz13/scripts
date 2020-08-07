#!/bin/bash

COLOR='\033[1;93m'
NC='\033[0m' # No Color

sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y

printf "\n\t${COLOR}Installing pycodestyle v 2.4${NC}\n"
sudo pip3 install pycodestyle==2.4

# pip3 install --upgrade pycodestyle
