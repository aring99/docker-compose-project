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

# Pull the PostgreSQL Exporter Docker image
echo "Pulling PostgreSQL Exporter image..."
docker pull prometheuscommunity/postgres-exporter:latest

# Run the PostgreSQL Exporter container
echo "Running PostgreSQL Exporter container..."
docker run -d --name postgres_exporter \
    -e DATA_SOURCE_NAME="postgres://${POSTGRES_USER}:${POSTGRES_PASSWORD}@${POSTGRES_HOST}:${POSTGRES_PORT}/${POSTGRES_DB}?sslmode=disable" \
    -p 9187:9187 \
    docker pull prometheuscommunity/postgres-exporter:latest

# Print success message
echo "PostgreSQL Exporter is now running and accessible on port 9187."
#echo "Please configure Prometheus to scrape from http://<your_host>:9187/metrics."

