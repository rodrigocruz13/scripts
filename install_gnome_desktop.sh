#!/bin/bash

COLOR='\033[1;93m' # Bold Yellow
COLOR1='\033[1;96m' # Bold Yellow

NC='\033[0m'       # No Color

CURRENT=$PWD
cd $HOME
printf "\n\t${COLOR}Current dir: ${COLOR1}${CURRENT} ${NC}\n"

sudo apt-get update
sudo apt-get upgrade -y

printf "\n\t${COLOR}Installing wget${NC}\n"
sudo apt install gnome-tweaks -y
sudo apt install ubuntu-gnome-desktop -y

sudo apt autoremove -y
cd $CURRENT

google-chrome