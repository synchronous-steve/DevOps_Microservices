#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Build continer image fro Dockerfile
docker build --tag module4_project .

# List local docker images
docker image ls

# Start the container \ application
docker run --name module4_project -d -p 8000:80 module4_project
