#!/bin/bash

COLOR='\033[1;93m'
NC='\033[0m' # No Color

sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y

printf "\n\t${COLOR}Transfering Node 10 URL source${NC}\n"
curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -

printf "\n\t${COLOR}Installing Nodejs v 10${NC}\n"
sudo apt-get install -y nodejs==10.0
