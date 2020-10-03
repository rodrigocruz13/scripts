#!/bin/bash

COLOR='\033[1;93m'
COLOR1='\033[1;96m'

NC='\033[0m' # No Color

sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y

CURRENT=$PWD
cd $HOME

printf "\n\t${COLOR}Upgrading setuptools${NC}\n"
pip3 install --upgrade setuptools


printf "\n\t${COLOR}Installing GPy${NC}\n"
pip3 install --user GPy

printf "\n\t${COLOR}Installing gpyopt${NC}\n"
pip3 install --user gpyopt

cd $CURRENT
