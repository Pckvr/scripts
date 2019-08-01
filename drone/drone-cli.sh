#!/bin/bash

curl -L https://github.com/drone/drone-cli/releases/download/v1.1.0/drone_linux_amd64.tar.gz | tar zx
sudo install -t /usr/local/bin drone
