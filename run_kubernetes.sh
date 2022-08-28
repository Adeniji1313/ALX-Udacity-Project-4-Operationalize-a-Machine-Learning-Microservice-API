#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=abbas13/housing-prediction

# Step 2
# Run the Docker Hub container with kubernetes
kubectl create deploy housing-prediction --image=$dockerpath:v1.00

# Step 3:
# List kubernetes pods
kubectl get pods,deploy

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/housing-prediction --address 0.0.0.0 8000:80