#!/bin/bash

COLOR='\033[1;93m' # Bold Yellow
COLOR1='\033[1;96m' # Bold Yellow

NC='\033[0m'       # No Color

CURRENT=$PWD
printf "\n\t${COLOR}Current dir: ${COLOR1}${CURRENT} ${NC}\n"

sudo apt-get update
sudo apt-get upgrade -y

printf "\n\t${COLOR}Installing the Yolo v5 Requirements ${COLOR1}${CURRENT} ${NC}\n"

# 1. Installing GIT

if ! [ -x "$(command -v git)" ]; then
    echo 'Error: git is not installed.' >&2
    printf "\n\t${COLOR}1. Installing GIT${NC}\n"
    sudo apt-get install git -y
    sudo apt autoremove -y

    printf "\n\t${COLOR}Setting up GIT${NC}\n"
    printf "\n\t${COLOR1}Github user: "
    read _GUSER_

    printf "\n\t${COLOR1}Github email:"
    read _GEMAIL_

    git config --global user.email $_GEMAIL_
    git config --global user.name $_GUSER_
    git config --global push.default simple
    exit 1
fi


# Installing PIP
printf "\n\t${COLOR}2. Installing PIP3${NC}\n"

sudo apt-get install python3-pip -y
pip3 --version

pip -V

cd $HOME
printf "\n\t${COLOR}Current dir: ${COLOR1}${CURRENT} ${NC}\n"


printf "\n\t${COLOR}Installing the Yolo v5 enviroment ${COLOR1}${CURRENT} ${NC}\n"
git clone https://github.com/ultralytics/yolov5  # clone repo
pip install -U -r yolov5/requirements.txt  # install dependencies

cd /content/yolov5