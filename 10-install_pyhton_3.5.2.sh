#!/bin/bash

COLOR='\033[1;93m'
COLOR1='\033[1;96m'

NC='\033[0m' # No Color

sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y

CURRENT=$PWD
cd $HOME

printf "\n\t${COLOR}1 – Installing Required Packages${NC}\n"
sudo apt-get install build-essential checkinstall -y
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev -y

printf "\n\t${COLOR}2 – Downloading Python 3.5.2 en /usr/src${NC}\n"
cd /usr/src
sudo wget https://www.python.org/ftp/python/3.5.2/Python-3.5.2.tgz
sudo tar xzf Python-3.5.2.tgz

printf "\n\t${COLOR}3 – Compiling Python Source${NC}\n"
cd Python-3.5.2
sudo ./configure --enable-optimizations
sudo make altinstall

printf "\n\t${COLOR}4 – Verifying${NC}\n"
python3.5 -V

cd $CURRENT
