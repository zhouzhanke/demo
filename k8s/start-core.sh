#!/usr/bin/env bash

echo "startup core"
echo "startup demo gateway"
kubectl apply -f k8s/k8s-demo-gateway.yaml
echo "startup demo provider"
kubectl apply -f k8s/k8s-demo-provider.yaml
echo "startup demo consumer"
kubectl apply -f k8s/k8s-demo-consumer.yaml