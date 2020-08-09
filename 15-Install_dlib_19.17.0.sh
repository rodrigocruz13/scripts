#!/bin/bash

COLOR='\033[1;93m'
COLOR1='\033[1;96m'
NC='\033[0m' # No Color
SWP_FILE='/docs/scripts/11.1-increase_swap.sh'


printf "\n\t${COLOR}Updating dependencies${NC}\n"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y

CURRENT=$PWD
cd $HOME

printf "\n\t${COLOR}Install cmake${COLOR1}\n"
sudo apt-get install -y build-essential cmake

printf "\n\t${COLOR}Install libopenblas-dev liblapack-dev${COLOR1}\n"
sudo apt-get install -y libopenblas-dev liblapack-dev

printf "\n\t${COLOR}Install libx11-dev libgtk-3-dev${COLOR1}\n"
sudo apt-get install -y libx11-dev libgtk-3-dev

printf "\n\t${COLOR}Install python3-dev python3-pip${COLOR1}\n"
sudo apt-get install -y python3 python3-dev python3-pip

printf "\n\t${COLOR}Increasing the swap file${COLOR1}\n"
sudo sh ./${SWP_FILE}

printf "\n\t${COLOR}Install dlib 19.17.0${COLOR1}\n"
pip3 install --user dlib==19.17.0

printf "\n\t${NC}"
cd $CURRENT
