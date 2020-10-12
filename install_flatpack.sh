#!/bin/bash

COLOR='\033[1;93m' # Bold Yellow
COLOR1='\033[1;96m' # Bold Yellow

NC='\033[0m'       # No Color

CURRENT=$PWD
cd $HOME
printf "\n\t${COLOR}Upgrading system: ${COLOR1}${CURRENT} ${NC}\n"

sudo apt-get update
sudo apt-get upgrade -y

printf "\n\t${COLOR}Installing flatpack${NC}\n"
sudo apt install flatpak -y

printf "\n\t${COLOR}Installing flatpack plugin${NC}\n"

sudo apt install gnome-software-plugin-flatpak -y

printf "\n\t${COLOR}Adding repository${NC}\n"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

printf "\n\t${COLOR}Cleaning${NC}\n"

sudo apt autoremove -y

printf "\n\t${COLOR} ...  Rebooting ${NC}\n"
sudo reboot

cd $CURRENT
