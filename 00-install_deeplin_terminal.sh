#!/bin/bash

COLOR='\033[1;93m' # Bold Yellow
COLOR1='\033[1;96m' # Bold Yellow

NC='\033[0m'       # No Color

CURRENT=$PWD
printf "\n\t${COLOR}Current dir: ${COLOR1}${CURRENT} ${NC}\n"

sudo apt-get update
sudo apt-get upgrade -y

printf "\n\t${COLOR}Adding repository${NC}\n"
sudo add-apt-repository ppa:noobslab/deepin-sc

printf "\n\t${COLOR}Instaling terminal${NC}\n"
sudo apt-get install deepin-terminal

sudo apt autoremove -y
cd $HOME
