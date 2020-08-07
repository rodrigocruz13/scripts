#!/bin/bash

COLOR='\033[1;93m'
COLOR1='\033[1;96m'

NC='\033[0m' # No Color

sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y

CURRENT=$PWD
cd $HOME

printf "\n\t${COLOR}Installing Matplotlib 3.0${NC}\n"
pip3 install --user matplotlib==3.0

printf "\n\t${COLOR}Installing Pillow${NC}\n"
pip3 install --user Pillow
sudo apt-get install python3-tk -y

cd $CURRENT
