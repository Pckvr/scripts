#!/bin/bash
sudo apt update
sudo apt install git

cd ~/
sudo rm -rf pool-app
mkdir pool-app
cd pool-app

cp -r ~/scripts/kubernetes/pool-app/mongo/ .
cp -r ~/scripts/kubernetes/pool-app/jenkins/ .
cp -r ~/scripts/kubernetes/pool-app/nginx/ .

kubectl apply -f mongo

git clone https://github.com/JPeckoverQA/TeamAPoolProjectBackend.git
git clone https://github.com/JPeckoverQA/TeamAPoolProjectUI.git
cd TeamAPoolProjectBackend
git checkout docker

cp ~/scripts/kubernetes/pool-app/backend/deployment.yaml .
cp ~/scripts/kubernetes/pool-app/backend/service.yaml .
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

cd ..

cd TeamAPoolProjectUI
git checkout docker-multistage

cp ~/scripts/kubernetes/pool-app/frontend/deployment.yaml .
cp ~/scripts/kubernetes/pool-app/frontend/service.yaml .
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml

cd ..

kubectl apply -f jenkins
kubectl apply -f nginx

