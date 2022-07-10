#!/bin/bash



sudo git clone http://aur.archlinux.org/yay.git /opt/yay
cd /opt/yay
mkpkg -si

sudo yay -Syu aconfmgr






