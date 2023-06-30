#!/bin/bash
CONTAINER_NAME="reactapp-prod"
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME -f
# TO DEPLOY THE IMAGE
docker compose -f docker-compose.prod.yml up -d
