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

printf "\n\t${COLOR}Downloading Slack${NC}\n"
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.2-amd64.deb

printf "\n\t${COLOR}Installing slack${NC}\n"
sudo apt install ./slack-desktop-*.deb -y

sudo apt autoremove -y
cd $HOME
