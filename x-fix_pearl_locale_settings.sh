#!/bin/bash

COLOR='\033[1;93m' # Bold Yellow
COLOR1='\033[1;96m' # Bold Yellow

NC='\033[0m'       # No Color

CURRENT=$PWD
cd $HOME

printf "\n\t${COLOR}Generating locales: ${COLOR1}${CURRENT} ${NC}\n"
sudo locale-gen en_US.UTF-8

printf "\n\t${COLOR}Settng locale settings: ${COLOR1}${CURRENT} ${NC}\n"
sudo export LANGUAGE=en_US.UTF-8
sudo export LANG=en_US.UTF-8
sudo export LC_ALL=en_US.UTF-8
sudo locale-gen en_US.UTF-8

sudo dpkg-reconfigure locales

cd $CURRENT

