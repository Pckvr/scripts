#!/bin/bash
sudo apt update
sudo apt install git

cd ~/
sudo rm -rf pool-app
mkdir pool-app
cd pool-app

git clone https://github.com/JPeckoverQA/TeamAPoolProjectUI.git
cd TeamAPoolProjectUI
git checkout docker-multistage
./setup-frontend.sh
