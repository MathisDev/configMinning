lspci -nn | grep VGA
apt purge '*nvidia*'
echo "deb http://deb.debian.org/debian bookworm main contrib non-free-firmware" >> /etc/apt/sources.list
apt update
apt-get install firmware-amd-graphics libgl1-mesa-dri libglx-mesa0 mesa-vulkan-drivers xserver-xorg-video-all
systemctl reboot
