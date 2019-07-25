#!/bin/bash
sudo apt update
sudo apt install git

cd ~/
sudo rm -rf pool-app
mkdir pool-app
cd pool-app

git clone https://github.com/JPeckoverQA/TeamAPoolProjectBackend.git
cd TeamAPoolProjectBackend
git checkout docker-aws-terraform
./setup-backend.sh
