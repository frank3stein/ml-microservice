#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build --tag=ml-microservice .
# Step 2: 
# List docker images
docker image ls
# Step 3: 
# Run flask app
# docker run -it ml-microservice bash
docker run -p 8000:5001 ml-microservice
# docker run -it --rm --name ml-microservice ml-microservice #first is the container name and the second is the image tag