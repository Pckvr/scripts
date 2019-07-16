#!/bin/bash

sudo apt install curl -y

curl https://get.docker.com | sudo bash

sudo usermod -aG docker $(whoami)

echo "YOU MUST NOW RESTART THE VM"
