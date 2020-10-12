#!/bin/bash

COLOR='\033[1;93m'
COLOR1='\033[1;96m'

NC='\033[0m' # No Color

sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y

CURRENT=$PWD
cd $HOME

printf "\n\t${COLOR}1 – Adding repository${NC}\n"
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update

printf "\n\t${COLOR}1 – Installing${NC}\n"
sudo apt install python3.6


printf "\n\t${COLOR}4 – Listing python versions${NC}\n"
ls -l /usr/bin/python*


printf "\n\t${COLOR}4 – Generating alternatives for Python${NC}\n"
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.6 1
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.5 2

printf "\n\t${COLOR}4 – Verifying${NC}\n"
python --version

printf "\n\t${COLOR}4 – Force python to use thise new version${NC}\n"
sudo update-alternatives  --set python /usr/bin/python3.6

printf "\n\t${COLOR}4 – Verifying${NC}\n"
python --version

printf "\n\t${COLOR}4 – Generating alternatives for Python 3${NC}\n"
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.6 1
sudo update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.5 2

printf "\n\t${COLOR}4 – Verifying${NC}\n"
python3 --version

printf "\n\t${COLOR}4 – Force python to use thise new version${NC}\n"
sudo update-alternatives  --set python3 /usr/bin/python3.6

printf "\n\t${COLOR}4 – Verifying${NC}\n"
python3 --version


cd $CURRENT
