#!/bin/bash

# Pull the latest Pawns CLI Docker image
docker pull iproyal/pawns-cli:latest

# Run the Pawns CLI container
docker run -d \
  --name pawns_cli_container \
  --restart=unless-stopped \
  iproyal/pawns-cli:latest \
  -email=example@gmail.com \
  -password=password \
  -device-name=github \
  -device-id=codepsace \
  -accept-tos
