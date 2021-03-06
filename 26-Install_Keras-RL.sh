#!/bin/bash

COLOR='\033[1;93m'
COLOR1='\033[1;96m'

NC='\033[0m' # No Color

sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y

CURRENT=$PWD
cd $HOME

printf "\n\t${COLOR}Installing Keras for Reinforce Learning RL${NC}\n"
pip install --user keras-rl

printf "\n\t${COLOR}Installing Keras 2.2.5${NC}\n"
pip install --user keras==2.2.5

printf "\n\t${COLOR}Installing Pillow${NC}\n"
pip install --user Pillow

printf "\n\t${COLOR}Installing h5py${NC}\n"
pip install --user h5py

cd $CURRENT
