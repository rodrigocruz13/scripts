#!/bin/bash

COLOR='\033[1;93m'
COLOR1='\033[1;96m'

NC='\033[0m' # No Color

sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y

CURRENT=$PWD
cd $HOME

printf "\n\t${COLOR}Installing scikit-learn 0.21${NC}\n"
pip install --user scikit-learn==0.21

printf "\n\t${COLOR}scipy 1.3${NC}\n"
pip install --user scipy==1.3

cd $CURRENT
