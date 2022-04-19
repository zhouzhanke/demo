#!/usr/bin/env bash

echo "stop core"
echo "stop demo gateway"
microk8s kubectl delete -f k8s/k8s-demo-gateway.yaml
echo "stop demo provider"
microk8s kubectl delete -f k8s/k8s-demo-provider.yaml
echo "stop demo consumer"
microk8s kubectl delete -f k8s/k8s-demo-consumer.yaml
