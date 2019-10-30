#!/bin/bash
set -x
sudo apt-get -y update
sudo apt-get -y install nmap
sudo ufw allow 9090
sudo ufw allow 9999

sudo useradd -m -s /bin/bash seed
sudo echo "seed:dees" | chpasswd
sudo usermod -a -G sudo seed
