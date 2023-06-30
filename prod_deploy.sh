#!/bin/bash
CONTAINER_NAME="reactapp-prod"
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME -f

docker compose -f docker-compose.prod.yaml up -d
