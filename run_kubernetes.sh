#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
docker login
dockerpath=martinezi/ml-microservice

# Step 2
# Run the Docker Hub container with kubernetes
# kubectl apply -f prediction-service.yaml
kubectl apply -f prediction-deployment.yaml


# Step 3:
# List kubernetes pods
kubectl get pods -o wide

# Step 4:
# Forward the container port to a host
kubectl port-forward deployment/prediction 8000:80 # the local port to the docker expose port