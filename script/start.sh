#!/usr/bin/bash

echo "Freeing up RAM. Please wait..";
sync; sudo su -c "echo 1 > /proc/sys/vm/drop_caches"
sudo su -c "sudo screen -X -S minew quit"
sudo su -c "sudo screen -X -S fakescreen quit"
sudo su minerstat -c "screen -X -S fakescreen quit"
#sudo su minerstat -c 'screen -X -S minerstat-console quit'

screen -A -m -d -S fakescreen sh /minning/miner/bin/fakescreen.sh

sh launcher.sh
