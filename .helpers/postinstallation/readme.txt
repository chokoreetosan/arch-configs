This readme is intended as a supplement to the official Arch linux install docs. Not a substitute.

It's purpose is to highlight the ways in which my installation and configuration differs from standard practice.

ToDo: make sure all 3 installation scripts work properly. The following guide outlines what they should do, for easy reference, but seriously, just use the installation docs.
Also, make sure that you read the scripts and change any settings and values as you need.
Run setup-1.sh.

First install the packages in packages.txt. You can use pacstrap-2.sh.

finish-3.sh should do the next 3 steps:
Generate the fstab.
Chroot into the new system.
Configure grub.

Create a user with useradd -m <username>
Set the password with passwd <username> 
Use visudo to add this new user to the sudoers group.

exit chroot
shutdown
boot up, and log in as new user

Git clone the configs repo.

Then, we can run before-aconfmgr.sh to get yum and aconfmgr.

Run aconfmgr apply.

Then, run change-shell.sh. before-aconfmgr.sh and change-shell.sh use /bin/bash.
And after-aconfmgr uses /bin/zsh.

Run after-aconfmgr script.

Make sure that you finish the network configuration and that you can ping archlinux.org.
Otherwise, the new installation won't be able to access the internet.

Be sure to configure grub, or the system won't boot.

Check the grub wiki, but you will need to run

grub-install
with some flags and arguments

use grub-mkconfig -o /boot/grub/grub.cfg

to generate the grub config

Mount the other operating system partitions.
Run grub-mkconfig again. If you get a warning os-proper will not be executed...

edit /etc/default/grub and add or uncomment

GRUB_DISABLE_OS_PROBER=false

and rerun grub-mkconfig

And then add

/boot/amd-ucode.img as the first initrd in the bootloader config file

Rerun grub-mkconfig to auto detect the microcode update



