#!/bin/bash

# Generate a Device ID
DEVICE_ID=FBD89170E8F5B8786356ECE58685796468EB17BE4E7AFEB6060235D18926EABB
echo "Generated Device ID: $DEVICE_ID"

# Pull the latest ProxyRack Docker image
sudo docker pull proxyrack/pop

# Run the ProxyRack container with the generated Device ID
sudo docker run -d --name proxyrack --restart always \
  -e UUID="$DEVICE_ID" proxyrack/pop

echo "ProxyRack container started with Device ID: $DEVICE_ID"
echo "Please add the following Device ID to your Peer account:"
echo "$DEVICE_ID"
