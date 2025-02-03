#!/bin/bash

# Update the apt package index
sudo apt-get update -y

# Install dependencies
sudo apt-get install -y apt-transport-https ca-certificates curl software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Fetch the correct codename for Ubuntu version
CODENAME=$(lsb_release -c | awk '{print $2}')

# Add Docker repository (with force confirmation)
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $CODENAME stable" -y

# Update the package index again with the Docker repository
sudo apt-get update -y

# Install Docker CE
sudo apt-get install -y docker-ce

# Verify Docker installation
sudo docker --version

# Add the current user to the Docker group to allow running Docker without sudo
sudo usermod -aG docker $USER

# Inform the user to log out and log back in
echo "Docker installed successfully! Please log out and log back in for the Docker group changes to take effect."

