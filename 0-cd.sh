#!/bin/bash

COLOR='\033[1;93m' # Bold Yellow
COLOR1='\033[1;96m' # Bold Yellow
NC='\033[0m'       # No Color

CURRENT=$PWD

printf "\n\t${COLOR}Current dir: ${COLOR1}${CURRENT} ${NC}\n"
cd ..
printf "\n\t${COLOR}Current dir: ${COLOR1}${PWD} ${NC}\n"
cd $HOME
printf "\n\t${COLOR}Current dir: ${COLOR1}${PWD} ${NC}\n"

cd $CURRENT
printf "\n\t${COLOR}Current dir: ${COLOR1}${CURRENT} ${NC}\n"
