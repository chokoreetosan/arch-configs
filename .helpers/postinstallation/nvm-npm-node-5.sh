#!/bin/zsh

#Installing node the right way, starting with nvm.

yay --noconfirm -S nvm

source /usr/share/nvm/init-nvm.sh

echo 'source /usr/share/nvm/init-nvm.sh' >> ~/.zshrc

nvm install node

nvm use node


