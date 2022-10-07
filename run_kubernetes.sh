#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Docker ID/path
dockerpath=steveb84101/udacity-project4

# Run container image in kubernetes
docker login

kubectl run udacity-project4 --image="$dockerpath" --port=80 --labels app='udacity-project4',service='House-price-predictions'

attempts=0

while [ $(kubectl get pod/udacity-project4 --output jsonpath='{.status.phase}') != "Running" ] && [ $attempts -lt 6 ]
do 
    attempts=$((attempts+1))
    echo "waiting 90 seconds for pods to start "
    sleep 15
done

# List kubernetes pods
kubectl get pods -A

# forward host port to container port
kubectl port-forward udacity-project4 8000:80

