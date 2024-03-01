sudo apt update
sudo apt dist-upgrade -y
sudo apt install -y wget -y

wget --referer https://www.amd.com/en/support/kb/release-notes/rn-amdgpu-unified-linux-21-30 https://drivers.amd.com/drivers/linux/amdgpu-pro-21.30-1290604-ubuntu-20.04.tar.xz
tar xJf amdgpu-pro-21.30-1290604-ubuntu-20.04.tar.xz

cd amdgpu-pro-21.30-1290604-ubuntu-20.04/
chmod +x amdgpu-install
./amdgpu-pro-install -y --opencl=rocr,legacy

sudo usermod -a -G render $LOGNAME
sudo usermod -a -G video $LOGNAME

sudo apt-get install -y clinfo
sudo apt upgrade amdgpu

wget https://github.com/Lolliedieb/lolMiner-releases/releases/download/1.42/lolMiner_v1.42_Lin64.tar.gz
tar -xf lolMiner_v1.42_Lin64.tar.gz

echo "REBOOT in 5 segond"
echo "OR CTRL + C"
sleep(5000)
reboot

