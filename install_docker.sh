#!/bin/bash

# Update the apt package index
sudo apt-get update

# Install dependencies
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository to APT sources
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update package index again with Docker packages
sudo apt-get update

# Install the latest version of Docker CE
sudo apt-get install -y docker-ce

# Verify Docker installation
sudo docker --version

# Add your user to the Docker group to avoid using sudo for Docker commands
sudo usermod -aG docker $USER

# Inform user to log out and log back in
echo "Docker installed successfully! Please log out and log back in for the Docker group changes to take effect."

