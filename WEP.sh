airmon-ng stop wlan1
airmon-ng stop mon0

echo Enter target's channel
read channel

airmon-ng start wlan1 $channel

echo Enter target's essid
read essid
echo Enter target's bssid
read bssid
 
aireplay-ng -9 -e $essid -a $bssid mon0 --ignore-negative-one

sleep 5

echo Name output file
read name

airodump-ng -c $channel --bssid $bssid -w $name mon0 --ignore-negative-one
