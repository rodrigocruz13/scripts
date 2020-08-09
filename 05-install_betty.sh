#!/bin/bash

COLOR='\033[1;93m' # Bold Yellow
COLOR1='\033[1;96m' # Bold Yellow

NC='\033[0m'       # No Color

CURRENT=$PWD
cd $HOME

printf "\n\t${COLOR}Upgrading system${NC}\n"
sudo apt-get update
sudo apt-get upgrade -y

printf "\n\t${COLOR}Cloning repository${NC}\n"
git clone --recursive https://github.com/holbertonschool/Betty.git

printf "\n\t${COLOR}Installing${NC}\n"
cd Betty
sudo ./install.sh

printf "\n\t${COLOR}Creating betty script file${NC}\n"
echo "
#!/bin/bash
# Simply a wrapper script to keep you from having to use betty-style
# and betty-doc separately on every item.
# Originally by Tim Britton (@wintermanc3r), multiargument added by
# Larry Madeo (@hillmonkey)

BIN_PATH="/usr/local/bin"
BETTY_STYLE="betty-style"
BETTY_DOC="betty-doc"

if [ "$#" = "0" ]; then
    echo "No arguments passed."
    exit 1
fi

for argument in "$@" ; do
    echo -e "\n========== $argument =========="
    ${BIN_PATH}/${BETTY_STYLE} "$argument"
    ${BIN_PATH}/${BETTY_DOC} "$argument"
done
" > betty

cat betty
ls -lha *betty

sudo chmod a+x betty
sudo mv betty /bin/

ls -lha /bin/*betty

cat /bin/betty

cd $CURRENT
