#!/bin/bash
CONTAINER_NAME="reactapp-dev"
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME

docker compose -f /opt/reactjs-demo/docker-compose.dev.yaml up -d
