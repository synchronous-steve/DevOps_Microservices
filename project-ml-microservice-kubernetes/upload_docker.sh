#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=steveb84101/udacity-project4

# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login
docker tag module4_project:latest "$dockerpath:latest"

# Push tagged image to repository
docker push "$dockerpath:latest"
