#!/bin/bash

# Update package lists
sudo apt-get update

# Install Docker
echo "Installing Docker..."
bash installScripts/install_docker.sh

# Install Docker Compose
echo "Installing Docker Compose..."
bash installScripts/install_docker_compose.sh

# Install PostgreSQL Client
echo "Installing PostgreSQL Client..."
bash installScripts/install_postgresql_client.sh

# Install Postgres Exporter
echo "Installing Postgres Exporter..."
bash installScripts/install_postgres_exporter.sh

# Install Redis CLI
echo "Installing Redis CLI..."
bash installScripts/install_redis_cli.sh

# Install Redis Exporter
echo "Installing Redis Exporter..."
bash installScripts/install_redis_exporter.sh

echo "All installations completed successfully!"
