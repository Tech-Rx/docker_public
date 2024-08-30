#!/bin/bash

# Generate a Device ID
DEVICE_ID=$(cat /dev/urandom | LC_ALL=C tr -dc 'A-F0-9' | dd bs=1 count=64 2>/dev/null)
echo "Generated Device ID: $DEVICE_ID"

# Pull the latest ProxyRack Docker image
sudo docker pull proxyrack/pop

# Run the ProxyRack container with the generated Device ID
sudo docker run -d --name proxyrack --restart always \
  -e UUID="$DEVICE_ID" proxyrack/pop

echo "ProxyRack container started with Device ID: $DEVICE_ID"
echo "Please add the following Device ID to your Peer account:"
echo "$DEVICE_ID"
