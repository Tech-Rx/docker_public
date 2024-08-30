#!/bin/bash

# Pull the latest Honeygain Docker image
docker pull honeygain/honeygain

# Get the Terms of Use
docker run --rm honeygain/honeygain -tou-get

# Run the Honeygain container
docker run -d \
  --name honeygain_container \
  honeygain/honeygain -tou-accept \
  -email example@gmail.com \
  -pass password \
  -device codespace
