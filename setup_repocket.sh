#!/bin/bash

# Pull the latest Repocket Docker image
docker pull repocket/repocket:latest

# Run the Repocket container with environment variables directly
docker run --name repocket \
  -e RP_EMAIL=absaralam.crypto@gmail.com \
  -e RP_API_KEY=cdce0bcb-722b-4c03-8c96-938d583ad85c \
  -d --restart=always repocket/repocket
