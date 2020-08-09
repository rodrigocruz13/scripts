#!/bin/bash

COLOR='\033[1;93m' # Bold Yellow
COLOR1='\033[1;96m' # Bold Yellow

NC='\033[0m'       # No Color

CURRENT=$PWD
cd $HOME

printf "\n\t${COLOR}Current dir: ${COLOR1}${CURRENT} ${NC}\n"

sudo apt-get update
sudo apt-get upgrade -y
printf "\n\t${COLOR}Installing gcc 4.8${NC}\n"
sudo apt-get install gcc-4.8 -y

printf "\n\t${COLOR}Cleaning${NC}\n"
sudo apt autoremove -y

cd $CURRENT

