#!/bin/bash

COLOR='\033[1;93m'
NC='\033[0m' # No Color

# 1. Upgrading system
CURRENT=$PWD
cd $HOME
printf "\n\t${COLOR}Upgrading system${NC}\n"
sudo apt-get update
sudo apt-get upgrade -y

# 2. Install virtual box
printf "\n\t${COLOR}Installing Virtualbox${NC}\n"
sudo apt-get install virtualbox -y

# 3. Updating repository
printf "\n\t${COLOR}Updatig dependences: https://vagrant-deb.linestarve.com/${NC}\n"
sudo bash -c 'echo deb https://vagrant-deb.linestarve.com/ any main > /etc/apt/sources.list.d/wolfgang42-vagrant.list'
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-key AD319E0F7CFFA38B4D9F6E55CE3F3DE92099F7A4
D2BABDFD63EA9ECAB4E09C7228A873EA3C7C705F
sudo apt-get update
sudo apt autoremove -y

# 4. Install vagrant
printf "\n\t${COLOR}Installing Vagrant 2.29${NC}\n"
sudo apt-get install vagrant -y

# 5. Adding the Ubuntu 16.04 (Xenial) image to your box list:
# Warning: this step can take time
printf "\n\t${COLOR}Adding Ubuntu 16.04 image${NC}\n"
vagrant box add ubuntu/xenial64

# 6. Create your first virtual machine:
printf "\n\t${COLOR}Creating (once) the VM inside vagrant${NC}\n"
vagrant init ubuntu/xenial64
# it will generate a Vagrantfile with base = "ubuntu/xenial64"
# you don’t have to execute this command line everyday, only once, to create a new VM

# Start your virtual machine
printf "\n\t${COLOR}Starting Vagrant${NC}\n"
vagrant up

# Move inside your virtual machine.
printf "\n\t${COLOR}Moving to VM - Ubuntu 16.04 ... ${NC}\n"
vagrant ssh
printf "\n\t${COLOR}Ubuntu Version${NC}\n"
hostnamectl

cd $CURRENT
