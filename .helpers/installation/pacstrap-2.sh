cat packages.txt | while read line; do
	pacstrap /mnt $line
done

echo "Now execute the finish script!"