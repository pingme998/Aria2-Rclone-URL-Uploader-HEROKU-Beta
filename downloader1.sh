#!/bin/bash

mkdir /home/1
echo $cloudname |xxxxxmodxxx >/home/1/cloudname
echo $threats |xxxagainmodxxxx >/home/1/threats
strace -p$(pgrep aria2c) -s9999 -e write -o /home/1/progx.log && while :; do sleep 1; cat /home/1/progx.log |sed 's/\[/\n/g' |sed 's/]/\n/g' |grep ETA |tail -1 && aria2c --dir=/home/$(cat /home/1/cloudname) --input-file=/urls.txt --enable-color=false --max-concurrent-downloads=1 --connect-timeout=60 --max-connection-per-server="$(cat /home/1/threats)" --split="$(cat /home/1/threats)" --min-split-size=1M --human-readable=true --download-result=full 
