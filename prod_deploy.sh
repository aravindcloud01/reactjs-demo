#!/bin/bash
CONTAINER_NAME="reactapp-prod"
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME -f

docker compose -f /opt/reactjs-demo/docker-compose.prod.yml up -d
