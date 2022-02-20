#!/bin/bash

# add dashboard
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.5.0/aio/deploy/recommended.yaml

# add admin account
kubectl apply -f admin-sa.yml
kubectl apply -f admin-rbac.yml

# print out admin token
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep "minikube-admin" | awk '{print $1}')
