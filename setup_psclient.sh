#!/bin/bash

# Run the PacketStream (PSClient) container
sudo docker run -d --restart=always -e CID=40dT --name psclient packetstream/psclient:latest

# Run the Watchtower container for automatic updates
sudo docker run -d --restart=always --name watchtower \
  -v /var/run/docker.sock:/var/run/docker.sock \
  containrrr/watchtower --cleanup --include-stopped --include-restarting --revive-stopped --interval 60 psclient
