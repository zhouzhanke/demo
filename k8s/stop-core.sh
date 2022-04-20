#!/usr/bin/env bash

echo "stop core"
echo "stop demo gateway"
kubectl delete -f k8s/k8s-demo-gateway.yaml
echo "stop demo provider"
kubectl delete -f k8s/k8s-demo-provider.yaml
echo "stop demo consumer"
kubectl delete -f k8s/k8s-demo-consumer.yaml
