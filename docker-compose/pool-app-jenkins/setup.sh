#!/bin/bash
sudo apt update
sudo apt install git

git clone https://github.com/JPeckoverQA/TeamAPoolProjectBackend.git
git clone https://github.com/JPeckoverQA/TeamAPoolProjectUI.git
cd TeamAPoolProjectBackend
git checkout docker

cd ..

cd TeamAPoolProjectUI
git checkout docker-multistage
