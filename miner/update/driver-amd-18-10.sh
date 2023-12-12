#!/bin/bash

echo ""
echo "=== UPDATING AMD DRIVERS TO v18.10 ==="
echo ""
echo "--- Ctrl + C to abort it. ---"

sleep 3

# STOP MINING AND STUFF
sudo killall screen
killall screen
killall node
sleep 5
sudo chvt 1

# UPDATE
sudo apt-get --yes --force-yes purge snapd ubuntu-core-launcher squashfs-tools
sudo apt-get --yes --force-yes update

cd /tmp
wget --referer http://support.amd.com/ https://www2.ati.com/drivers/linux/ubuntu/amdgpu-pro-18.10-572953.tar.xz
tar xvf amdgpu-pro-18.10-572953.tar.xz
cd amdgpu-pro-18.10-572953/
sudo ./amdgpu-pro-install -y --compute

sleep 3

echo ""

echo "You need to reboot to apply changes."
echo""

echo "=== REBOOTING in 5 segond ==="
echo "--- Ctrl + C to abort it . ---"
sleep 1
echo "0"
sleep 1
echo "1"
sleep 1
echo "2"
sleep 1
echo "3"
sleep 1
echo "4"
sleep 1
echo "5"

sudo shutdown -r now