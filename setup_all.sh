#!/bin/bash

# Update package lists
sudo apt-get update

# Install Docker
echo "Installing Docker..."
bash install_docker.sh

# Install Docker Compose
echo "Installing Docker Compose..."
bash install_docker_compose.sh

# Install PostgreSQL Client
echo "Installing PostgreSQL Client..."
bash install_postgresql_client.sh

# Install Redis CLI
echo "Installing Redis CLI..."
bash install_redis_cli.sh

echo "All installations completed successfully!"
