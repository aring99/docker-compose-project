#!/bin/bash

# Update the apt package index
sudo apt-get update

# Install PostgreSQL client
sudo apt-get install -y postgresql-client

# Verify installation
psql --version

