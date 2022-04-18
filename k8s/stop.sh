#!/usr/bin/env bash

echo "mysql mysql stop"
microk8s kubectl delete -f ./deploy/mysql/mysql-local.yaml


echo "nacos stop"
microk8s kubectl delete -f ./deploy/nacos/nacos-quick-start.yaml
