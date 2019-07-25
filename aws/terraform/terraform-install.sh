#!/bin/bash
sudo apt-get install wget unzip -y

#download terraform archive
export VER="0.12.3"
wget https://releases.hashicorp.com/terraform/${VER}/terraform_${VER}_linux_amd64.zip

#extract archive
unzip terraform_${VER}_linux_amd64.zip

#move binary file to usr/local/bin so that it is available to all users
sudo mv terraform /usr/local/bin/

#confirm installation
terraform -v