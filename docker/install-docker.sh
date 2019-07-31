#!/bin/bash

sudo apt install curl -y

curl https://get.docker.com | sudo bash

sudo usermod -aG docker $(whoami)

sudo newgrp docker

echo "*************************************************************************************"
echo "**********DOCKER USER HAS BEEN ADDED AND INITIALISED**********"
echo "*************************************************************************************"

#echo "YOU MUST NOW RESTART THE VM"
