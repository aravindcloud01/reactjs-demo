#!/bin/bash
IMAGENAME="reactapp_dev"
CONTAINER_NAME="reactapp-dev"
docker stop $CONTAINER_NAME
docker rmi -f $(docker images -aq)
docker build -f ../Dockerfile.dev -t reactapp_dev .
