#!/usr/bin/env bash

echo "mysql mysql startup"
kubectl create -f ./k8s/mysql-local.yaml

echo "nacos quick startup"
kubectl create -f ./k8s/nacos-quick-start.yaml

echo "ingress quick startup"
kubectl create -f ./k8s/ingress.yaml

# --image-repository string     Default: "k8s.gcr.io"

# metrics
# https://github.com/kubernetes-sigs/metrics-server
# kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
kubectl apply -f k8s/metrix.yaml

# ingress-nginx
# https://kubernetes.github.io/ingress-nginx/deploy/
# kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.2/deploy/static/provider/cloud/deploy.yaml
kubectl apply -f k8s/ingress-server.yaml

# https://docs.aws.amazon.com/eks/latest/userguide/dashboard-tutorial.html
# kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.5/aio/deploy/recommended.yaml