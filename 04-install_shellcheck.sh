#!/bin/bash

COLOR='\033[1;93m'
NC='\033[0m' # No Color

CURRENT=$PWD
cd "$HOME"

printf "\n\t${COLOR}Upgrading system${NC}\n"

sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y

printf "\n\t${COLOR}Installing shellcheck${NC}\n"
sudo apt-get install shellcheck

cd "$CURRENT"
