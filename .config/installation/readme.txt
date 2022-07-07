Verify the boot mode.

Check for internet connection.

Partition the disks with fdisk and format the partitions.

Mount the file systems.




First install the core packages which are base, base-devel, linux, linux-firmware, and git. Use pacstrap.

Generate the fstab.

Chroot into the new system.

Git clone the configs repo.

Then, we can run install-helpers to get yum and aconfmgr.

Run aconfmgr apply.

Make sure that you finish the network configuration and that you can ping archlinux.org.
Otherwise, the new installation won't be able to access the internet.

Be sure to configure grub, or the system won't boot.

Todo. figure out os-prober

Run node install script.

Run lunarvim install script.


