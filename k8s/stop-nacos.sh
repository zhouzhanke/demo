#!/usr/bin/env bash

echo "mysql mysql stop"
microk8s kubectl delete -f ./k8s/mysql-local.yaml


echo "nacos stop"
microk8s kubectl delete -f ./k8s/nacos-quick-start.yaml
