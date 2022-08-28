#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
dockerpath=abbas13/housing-prediction

# Step 2:  
# Authenticate & tag
docker login
docker tag housing-prediction:v1.00 $dockerpath:v1.00
echo "Docker ID and Image: $dockerpath"

# Step 3:
docker push $dockerpath:v1.00
