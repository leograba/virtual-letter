#!/bin/bash

# You can bring-up a local registry on development PC
# https://docs.docker.com/registry/deploying/
# And accept insecure registry on the board
# https://docs.docker.com/registry/insecure/#deploy-a-plain-http-registry

# Variables
BOARD=apalis-imx8-06494527
COMPOSE="docker-compose.yml"
export DOCKER_REGISTRY_HOST=leo:6000/leograba/
DR_HOST=$(echo $DOCKER_REGISTRY_HOST | sed "s/:/.local:/g")

# Build
docker-compose -f $COMPOSE build

# Push
docker-compose -f $COMPOSE push

# Start
scp docker-compose/docker-compose.yml torizon@$BOARD.local:/home/torizon/
ssh torizon@$BOARD.local "export DOCKER_REGISTRY_HOST=$DR_HOST && docker-compose pull && docker-compose up"