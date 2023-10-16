apt-get install firmware-realtek

wget https://developer.download.nvidia.com/compute/cuda/12.2.2/local_installers/cuda-repo-debian11-12-2-local_12.2.2-535.104.05-1_amd64.deb
dpkg -i cuda-repo-debian11-12-2-local_12.2.2-535.104.05-1_amd64.deb
cp /var/cuda-repo-debian11-12-2-local/cuda-*-keyring.gpg /usr/share/keyrings/
add-apt-repository contrib
apt-get update
apt-get -y install cuda

