#!/bin/bash

#install python 2.7

sudo apt-get update
sudo apt-get install -y wget
sudo apt-get install -y curl

#prequisites python
sudo apt-get install build-essential checkinstall
sudo apt-get install libreadline-gplv2-dev libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev

download python2.7
cd /usr/src
sudo wget https://www.python.org/ftp/python/2.7.16/Python-2.7.16.tgz

extract python2.7
sudo tar xzf Python-2.7.16.tgz

compile python source
cd Python-2.7.16
sudo ./configure --enable-optimizations
sudo make altinstall

check install python2.7 -V

go to home directory 
cd ~

#download linux64-bit archive file
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-253.0.0-linux-x86_64.tar.gz

#extract archive to home
tar zxvf google-cloud-sdk-253.0.0-linux-x86_64.tar.gz google-cloud-sdk

#initialize the SDK
gcloud init

#authenticate
gcloud auth login

#set region and zones
gcloud compute project-info add-metadata --metadata google-compute-default-region=europe-west1,google-compute-default-zone=europe-west1-b

#install jq
sudo apt-get install -y jq

#configure environment variables
echo 'GCLOUD_CONFIG=$(gcloud config list --format json)' >> ~/.bashrc
echo 'GCLOUD_PROJECT=$(echo -n ${GCLOUD_CONFIG} | jq -r '.core.project')' >> ~/.bashrc
echo 'GCLOUD_REGION=$(echo -n ${GCLOUD_CONFIG} | jq -r 'compute.region')' >> ~/.bashrc
echo 'GCLOUD_ZONE=$(echo -n ${GCLOUD_CONFIG} | jq -r '.compute.zone')' >> ~/.bashrc

echo "*****installing terraform*****"
./terraform-install.sh
