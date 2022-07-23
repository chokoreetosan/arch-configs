genfstab -U /mnt >> /mnt/etc/fstab

arch-chroot /mnt

grub-install --target=x86_64-efi --efi-directory=/boot --bootloader-id=GRUB

grub-mkconfig -o /boot/grub/grub.cfg

echo "Now make a user, give him sudo, and reboot!"

