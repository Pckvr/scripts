#!/bin/bash

sudo apt-get update && sudo apt-get install -y apt-transport-https
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee -a /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

echo " "
echo "********************************************************************************"
echo " "
echo "MUST HAVE INSTALLED AND INITIALISED GCP SDK"
echo " "
echo "********************************************************************************"
echo " "
echo "MUST HAVE A CLUSTER RUNNING"
echo " "
echo "********************************************************************************"
echo " "
echo "MUST CONNECT THE CLUSTER TO THE VM"
echo " "
echo "********************************************************************************"
