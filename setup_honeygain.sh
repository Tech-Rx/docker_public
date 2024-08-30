#!/bin/bash

# Pull the latest Honeygain Docker image
docker pull honeygain/honeygain

# Get the Terms of Use
docker run --rm honeygain/honeygain -tou-get

# Run the Honeygain container
docker run -d \
  --name honeygain_container \
  honeygain/honeygain -tou-accept \
  -email absaralam.crypto@gmail.com \
  -pass 0k%TgtJ8KXdn \
  -device codespace
