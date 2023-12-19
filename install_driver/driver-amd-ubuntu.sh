#!/bin/bash

# Vérifier si le système est Ubuntu
if [ "$(lsb_release -si)" != "Ubuntu" ]; then
    echo "Ce script est destiné à Ubuntu uniquement."
    exit 1
fi

# Mise à jour du système
sudo apt update
sudo apt upgrade -y

# Installation des dépendances
sudo apt install -y build-essential libgl1-mesa-dev

# Téléchargement des pilotes AMD
# wget https://www2.ati.com/drivers/linux/amdgpu-pro-20.40-1147286-ubuntu-20.04.tar.xz
# tar -Jxvf amdgpu-pro-20.40-1147286-ubuntu-20.04.tar.xz
#cd amdgpu-pro-20.40-1147286-ubuntu-20.04
#./amdgpu-install -y

wget https://repo.radeon.com/amdgpu-install/23.30.2/ubuntu/focal/amdgpu-install_5.7.50702-1_all.deb
sudo dpkg -i amdgpu-install_5.7.50702-1_all.deb
sudo apt-get install -f

# Redémarrer le système
sudo reboot