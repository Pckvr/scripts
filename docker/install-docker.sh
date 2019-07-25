#!/bin/bash

sudo apt install curl -y

curl https://get.docker.com | sudo bash

sudo usermod -aG docker $(whoami)

sudo newgrp docker
exit
//echo "YOU MUST NOW RESTART THE VM"
