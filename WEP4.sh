echo Enter target's bssid
read bssid

echo enter file's name before ".cap"
read $name

aircrack-ng -b $bssid $name.cap
