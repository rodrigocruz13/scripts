#!/bin/bash

COLOR='\033[1;93m'
COLOR1='\033[1;96m'

NC='\033[0m' # No Color

printf "\n\t${COLOR}1 – Updating packages${NC}\n"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y

CURRENT=$PWD
cd $HOME

printf "\n\t${COLOR}1 – Installing Autopep8${NC}\n"
pip install --upgrade autopep8

printf "\n\t${COLOR}4 – usage autopep8 --in-place --aggressive --aggressive <filename>${NC}\n"

cd $CURRENT
