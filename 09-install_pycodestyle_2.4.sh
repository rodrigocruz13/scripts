#!/bin/bash

COLOR='\033[1;93m'
NC='\033[0m' # No Color

CURRENT=$PWD
cd $HOME

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get remove pycodestyle -y
sudo apt autoremove -y

printf "\n\t${COLOR}Installing pycodestyle v 2.4${NC}\n"
sudo pip install pycodestyle==2.4

# pip3 install --upgrade pycodestyle

cd $CURRENT