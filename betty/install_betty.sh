#!/bin/bash

COLOR='\033[1;93m'
NC='\033[0m' # No Color

# 1. Upgrading system
CURRENT=$PWD
cd $HOME

printf "\n\t${COLOR}Upgrading system${NC}\n"
sudo apt-get update
sudo apt-get upgrade -y

printf "\n\t${COLOR}Cloning base repository${NC}\n"
sudo git clone https://github.com/holbertonschool/Betty.git

cd Betty
printf "\n\t${COLOR}Installing linter${NC}\n"
sudo ./install.sh

cd $CURRENT
printf "\n\t${COLOR}Converting betty file to executable${NC}\n"
sudo chmod a+x betty

printf "\n\t${COLOR}Moving betty to /bin/${NC}\n"
sudo cp betty /bin/
