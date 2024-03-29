#!/bin/bash

## This script will install the latest version of Docker-ce
echo "This will remove the current installation of docker and then reinstall"
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt install curl
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo groupadd docker
sudo usermod -aG docker ${USER} 
sudo gpasswd -a docker ${USER} 
newgrp docker

