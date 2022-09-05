#!/bin/bash
#stop docker compose
docker compose down
# Remove all stopped containers
docker rm $(docker ps -a -q)
# Remove all images
docker rmi $(docker images -aq)
# Remove all volumes
docker volume rm $(docker volume ls -q)
# Remove all networks
docker network rm $(docker network ls -q)
