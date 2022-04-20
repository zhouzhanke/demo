#!/usr/bin/env bash

echo "mysql mysql stop"
kubectl delete -f k8s/mysql-local.yaml


echo "nacos stop"
kubectl delete -f k8s/nacos-quick-start.yaml

echo "ingress stop"
kubectl delete -f k8s/ingress.yaml
kubectl delete -f k8s/metrix.yaml