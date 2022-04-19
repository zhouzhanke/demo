#!/usr/bin/env bash

echo "startup core"
echo "startup demo gateway"
microk8s kubectl apply -f k8s/k8s-demo-gateway.yaml
echo "startup demo provider"
microk8s kubectl apply -f k8s/k8s-demo-provider.yaml
echo "startup demo consumer"
microk8s kubectl apply -f k8s/k8s-demo-consumer.yaml