#!/bin/bash

cd ~/

rm -rf aks-ci

git clone https://github.com/bob-crutchley/aks-ci.git

cd aks-ci

kubectl apply -f jenkins/persistent-volume-claim.yaml

kubectl apply -f jenkins/pod.yaml

kubectl apply -f jenkins/service.yaml

kubectl apply -f nginx/config-map.yaml

kubectl apply -f nginx/deployment.yaml

kubectl apply -f nginx/service.yaml
