#!/bin/bash

# Pull the latest Repocket Docker image
docker pull repocket/repocket:latest

# Run the Repocket container with environment variables directly
docker run --name repocket \
  -e RP_EMAIL=example@gmail.com \
  -e RP_API_KEY=(your_api_key) \
  -d --restart=always repocket/repocket
