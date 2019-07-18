#!/bin/bash

#installs docker compose 
#must have docker already installed

#download the current stable release of Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

#Apply executable permissions to the binary
sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version
