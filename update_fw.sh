#!/bin/bash

# Docker image info
IMAGE="ghcr.io/grsszne/cornerstone-firmware:latest"

# Build the Docker image
echo "Building Docker image..."
docker build -t $IMAGE .

# Push the image to GHCR (assumes already logged in)
echo "Pushing Docker image to GHCR..."
docker push $IMAGE

# Git commit message (default "commit" if none supplied)
COMMIT_MSG=${1:-"commit"}

# Add, commit, and push git changes
echo "Adding and committing Git changes..."
git add .
git commit -m "$COMMIT_MSG"
git push

echo "Update complete!"
