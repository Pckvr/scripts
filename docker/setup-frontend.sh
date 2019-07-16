#!/bin/bash

docker build -t docker.io/jpeckover/pool_frontend:latest .

docker run -d --name frontend --network pool_app_network -p 4200:4200 docker.io/jpeckover/pool_frontend:latest

docker ps
docker logs -f frontend
