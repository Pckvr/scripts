#!/bin/bash
sudo apt update
sudo apt install git

cd ~/
rm -rf TeamAPoolProjectBackend
rm -rf TeamAPoolProjectUI
rm -f docker-compose.yaml

cp ~/scripts/docker-compose/pool-app/docker-compose.yaml ~/



git clone https://github.com/JPeckoverQA/TeamAPoolProjectBackend.git
git clone https://github.com/JPeckoverQA/TeamAPoolProjectUI.git
cd TeamAPoolProjectBackend
git checkout docker

cd ..

cd TeamAPoolProjectUI
git checkout docker-multistage-ci

cd ..
docker-compose up -d
