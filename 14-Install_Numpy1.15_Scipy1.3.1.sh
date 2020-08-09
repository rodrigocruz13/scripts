#!/bin/bash

COLOR='\033[1;93m'
COLOR1='\033[1;96m'
NC='\033[0m' # No Color

CURRENT=$PWD
cd $HOME

sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y

printf "\n\t${COLOR}Installing Numpy 1.15${NC}\n"
pip3 install --user numpy==1.15
printf "\n\t${COLOR}Installing Scipy 1.3${NC}\n"
python3 -m pip install --upgrade pip
pip3 install --user scipy==1.3.1
printf "\n\t${COLOR}Installing Pycodestyle 2.5${NC}\n"
pip3 install --user pycodestyle==2.5

cd $CURRENT
