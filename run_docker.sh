#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build -t housing-prediction:v1.00 . 

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run -it --rm -p 80:80 --name=predict housing-prediction:v1.00