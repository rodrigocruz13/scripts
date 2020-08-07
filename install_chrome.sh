#!/bin/bash

COLOR='\033[1;93m' # Bold Yellow
COLOR1='\033[1;96m' # Bold Yellow

NC='\033[0m'       # No Color

CURRENT=$PWD
printf "\n\t${COLOR}Current dir: ${COLOR1}${CURRENT} ${NC}\n"

sudo apt-get update
sudo apt-get upgrade -y

printf "\n\t${COLOR}Installing wget${NC}\n"
sudo apt install wget

printf "\n\t${COLOR}Downloading chrome${NC}\n"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

printf "\n\t${COLOR}Installing chrome${NC}\n"
sudo dpkg -i google-chrome-stable_current_amd64.deb

sudo apt autoremove -y
cd $HOME

google-chrome