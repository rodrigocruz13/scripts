#!/bin/bash

COLOR='\033[1;93m' # Bold Yellow
COLOR1='\033[1;96m' # Bold Yellow

NC='\033[0m'       # No Color

CURRENT=$PWD
printf "\n\t${COLOR}Current dir: ${COLOR1}${CURRENT} ${NC}\n"

sudo apt-get update
sudo apt-get upgrade -y

printf "\n\t${COLOR}Cloning repository${NC}\n"
git clone --recursive https://github.com/andresgongora/synth-shell.git

printf "\n\t${COLOR}Setting up files${NC}\n"
chmod +x synth-shell/setup.sh
cd synth-shell

printf "\n\t${COLOR}Installing chrome${NC}\n"
./setup.sh

cd $HOME
