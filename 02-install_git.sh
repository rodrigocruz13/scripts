#!/bin/bash

COLOR='\033[1;93m' # Bold Yellow
COLOR1='\033[1;96m' # Bold Yellow

NC='\033[0m'       # No Color

CURRENT=$PWD
printf "\n\t${COLOR}Current dir: ${COLOR1}${CURRENT} ${NC}\n"

sudo apt-get update
sudo apt-get upgrade -y
printf "\n\t${COLOR}Installing GIT${NC}\n"
sudo apt-get install git -y
sudo apt autoremove -y

printf "\n\t${COLOR}Setting up GIT${NC}\n"
printf "\n\t${COLOR1}Github user: "
read _GUSER_

printf "\n\t${COLOR1}Github email:"
read _GEMAIL_

cd $HOME
printf "\n\t${COLOR}Current dir: ${COLOR1}${CURRENT} ${NC}\n"

git config --global user.email $_GEMAIL_
git config --global user.name $_GUSER_
git config --global push.default simple

