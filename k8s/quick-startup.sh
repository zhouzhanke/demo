#!/usr/bin/env bash

echo "mysql mysql startup"
microk8s kubectl create -f ./deploy/mysql/mysql-local.yaml


echo "nacos quick startup"
microk8s kubectl create -f ./deploy/nacos/nacos-quick-start.yaml
