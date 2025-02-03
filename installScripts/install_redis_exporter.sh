#!/bin/bash

# Update the system
echo "Updating the system..."
sudo apt-get update -y

# Install Docker if it's not installed
#if ! command -v docker &> /dev/null; then
#    echo "Docker not found. Installing Docker..."
#    curl -fsSL https://get.docker.com -o get-docker.sh
#    sudo sh get-docker.sh
#    sudo usermod -aG docker $USER
#    echo "Docker installed successfully!"
#else
#    echo "Docker is already installed!"
#fi

# Pull the Redis Exporter Docker image
echo "Pulling Redis Exporter image..."
docker pull oliver006/redis_exporter:latest

# Run the Redis Exporter container
echo "Running Redis Exporter container..."
docker run -d --name redis_exporter \
    -e REDIS_ADDR=redis://$REDIS_HOST:$REDIS_PORT \
    -p 9121:9121 \
    oliver006/redis_exporter:latest

# Print success message
echo "Redis Exporter is now running and accessible on port 9121."
#echo "Please configure Prometheus to scrape from http://<your_host>:9121/metrics."

