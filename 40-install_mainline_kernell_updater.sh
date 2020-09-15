#!/bin/bash

COLOR='\033[1;93m' # Bold Yellow
COLOR1='\033[1;96m' # Bold Yellow

NC='\033[0m'       # No Color

CURRENT=$PWD
printf "\n\t${COLOR}Current dir: ${COLOR1}${CURRENT} ${NC}\n"

cd $HOME
sudo apt-add-repository -y ppa:cappelikan/ppa

sudo apt-get update
sudo apt-get upgrade -y

printf "\n\t${COLOR}Installing mainline ${COLOR1}${CURRENT} ${NC}\n"

sudo apt install mainline -y

printf "\n\t${COLOR} Building mainline ${COLOR1}${CURRENT} ${NC}\n"
sudo apt install libgee-0.8-dev libjson-glib-dev libvte-2.91-dev valac aria2 lsb-release aptitude -y
git clone https://github.com/bkw777/mainline.git
cd mainline

sudo make install

cd $CURRENT
