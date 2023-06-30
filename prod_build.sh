#!/bin/bash
IMAGENAME="reactapp_prod"
CONTAINER_NAME="reactapp-prod"
docker stop $CONTAINER_NAME
docker rmi -f $(docker images -aq)
docker build -f Dockerfile.prod -t aravindcloud01/prod:reactapp_prod .