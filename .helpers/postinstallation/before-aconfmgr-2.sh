#!/bin/bash

ln -sf /usr/share/zoneinfo/US/Pacific /etc/localtime

hwclock --systohc

cat /etc/locale.gen | sed -i "s/#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/" /etc/locale.gen

touch /etc/locale.conf

"LANG=en_US.UTF-8" >> /etc/locale.conf

mkhomedir_helper abhi

cd home/abhi

systemctl start NetworkManager.service
systemctl enable NetworkManager.service

sudo git clone http://aur.archlinux.org/yay.git /opt/yay
cd /opt/yay
makepkg -si

cd /home/abhi

yay -Syu aconfmgr-git






