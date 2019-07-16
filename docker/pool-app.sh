#!/bin/bash
sudo apt update
sudo apt install git

cd ~/
mkdir pool-app

git clone https://github.com/JPeckoverQA/TeamAPoolProjectBackend.git
git clone https://github.com/JPeckoverQA/TeamAPoolProjectUI.git
cd TeamAPoolProjectBackend
git checkout docker
./setup-backend.sh

cd ..

cd TeamAPoolProjectUI
git checkout docker
./setup-frontend.sh
