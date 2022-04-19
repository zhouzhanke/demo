#!/usr/bin/env bash

echo "mysql mysql startup"
microk8s kubectl create -f ./k8s/mysql-local.yaml


echo "nacos quick startup"
microk8s kubectl create -f ./k8s/nacos-quick-start.yaml
