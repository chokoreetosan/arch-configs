echo "Using default US console keymap"
sleep 2
echo "Selecting a nice new font."
sleep 3
setfont Lat2-Terminus16.psfu
if ls /sys/firmware/efi/efivars | wc -m; then
	echo "looks like you are in UEFI mode!"
else
	echo "you are not in UEFI mode"
	exit
fi
if ping -c 1 archlinux.org; then
	echo "Internet works."
else
	echo "Cannot ping archlinux.org. Check internet connection"
fi

timedatectl set-ntp true

echo "Now make your partitions with Fdisk! Format the partitions, and then, execute the next script!"


