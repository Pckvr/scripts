#!/bin/bash

kubectl delete daemonsets,replicasets,services,deployments,pods,rc,ing,statefulset --all

kubectl delete deployments --all
kubectl delete --all pods
kubectl delete services --all

kubectl delete pod --all
kubectl delete service --all
kubectl delete pvc --all
kubectl delete configmap --all

kubectl get all
