#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Docker ID/path
dockerpath=steveb84101/udacity-project4

# Run container image in kubernetes
docker login

kubectl run udacity-project4 --image="$dockerpath" --port=80 



# Step 3:
# List kubernetes pods

# Step 4:
# Forward the container port to a host

