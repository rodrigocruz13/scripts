#!/bin/bash


COLOR='\033[1;93m'
COLOR1='\033[1;96m'

NC='\033[0m' # No Color

sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y

CURRENT=$PWD


printf "\n\t${COLOR}1 – moving to usr/src ${NC}\n"
cd /usr/bin

printf "\n\t${COLOR}2 – Downloading 3.6.12 ${NC}\n"
sudo wget https://www.python.org/ftp/python/3.6.12/Python-3.6.12.tgz

printf "\n\t${COLOR}3 – Decompressng 3.6.12 ${NC}\n"
sudo tar xzf Python-3.6.12.tgz

printf "\n\t${COLOR}4 – moving to P3.6.12 ${NC}\n"
cd Python-3.6.12

printf "\n\t${COLOR}5 – enabling optimitazionts ${NC}\n"
sudo ./configure --enable-optimizations

printf "\n\t${COLOR}6 – Installing ${NC}\n"
sudo make altinstall

cd $CURRENT
