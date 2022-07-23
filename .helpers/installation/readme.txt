ToDo: make sure all 3 installation scripts work properly. The following guide outlines what they should do, for easy reference, but seriously, just use the installation docs.

Run setup-1.sh.
Then install the packages in packages.txt. You can use pacstrap-2.sh.

finish-3.sh should do the next 2 steps, but might not work:
Generate the fstab.
Chroot into the new system.

Configure grub using
grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB
grub-mkconfig -o /boot/grub/grub.cfg

Create a user with useradd -m <username>
Set the password with passwd <username> 
Use visudo to add this new user to the sudoers group.

exit chroot
shutdown
boot up, and log in as new user