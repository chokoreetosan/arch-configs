#!/bin/zsh

wget https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh
sh ./nvm-npm-node.sh

sh ./npm-packages.sh

sh ./lunarvim.sh

export PATH=${$PATH}:~/.local/bin
EDITOR="lvim"
VISUAL="lvim"
