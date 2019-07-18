#!/bin/bash

docker stop $(docker ps -aq)

docker rm -f $(docker ps -aq)

docker rmi -f $(docker images -q)

docker system prune -f


docker system prune --volumes -f
