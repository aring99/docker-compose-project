#!/bin/bash

# Update the apt package index
sudo apt-get update

# Install Redis server (this installs the CLI as well)
sudo apt-get install -y redis-server

# Verify installation
redis-cli --version

