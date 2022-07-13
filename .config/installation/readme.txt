This readme is intended as a supplement to the official Arch linux install docs. Not a substitute.

It's purpose is to highlight the ways in which my installation and configuration differs from standard practice.

It will eventually be replaced in it's entirety with scripting.


Verify the boot mode.

Check for internet connection.

Partition the disks with fdisk and format the partitions.

Mount the file systems.




First install the core packages which are base, base-devel, linux, linux-firmware, and git. Use pacstrap.

Generate the fstab.

Chroot into the new system.

Create a user with useradd -m <username>
Set the password with passwd <username> 
Use visudo to add this new user to the sudoers group.

press exit to log out of root, and log in as the new user.

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



