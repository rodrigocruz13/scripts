#!/bin/bash

COLOR='\033[1;93m'
COLOR1='\033[1;96m'

NC='\033[0m' # No Color

sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y

printf "\n\t${COLOR1}Requirement : [npm]  Node 10${NC}\n"
printf "\n\t${COLOR}Installing request${NC}\n"
sudo npm install request --global
export NODE_PATH=/usr/lib/node_modules
