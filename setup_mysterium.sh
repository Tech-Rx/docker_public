#!/bin/bash

# Define repository URL and paths
REPO_URL="https://github.com/absaro/docker.git"
REPO_DIR="$HOME/docker-repo"
CONFIG_DIR="$HOME/.mysterium"

# Clone or pull the repository
if [ ! -d "$REPO_DIR" ]; then
  echo "Repository directory not found. Cloning from repository..."
  git clone $REPO_URL $REPO_DIR
else
  echo "Repository found. Pulling latest changes..."
  cd $REPO_DIR
  git pull
fi

# Fix permissions
sudo chown -R $(whoami) $CONFIG_DIR

# Ensure the Mysterium configuration directory exists
mkdir -p $CONFIG_DIR

# Copy the Mysterium configuration files to the correct directory
cp -r $REPO_DIR/.mysterium/* $CONFIG_DIR/

# Run the Mysterium Node using Docker with the official command
sudo docker run --cap-add NET_ADMIN --net host --name myst -d mysteriumnetwork/myst service --agreed-terms-and-conditions

echo "Mysterium Node is running."
