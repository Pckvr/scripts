#!/bin/bash

sudo snap install microk8s --classic

microk8s.status --wait-ready

sudo snap alias microk8s.kubectl kubectl
sudo microk8s.kubectl config view --raw > $HOME/.kube/config
