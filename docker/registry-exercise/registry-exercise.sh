#!/bin/bash

docker run -d -p 5000:5000 --name registry registry

docker pull nginx:latest

docker tag nginx:latest localhost:5000/my/nginx

docker push localhost:5000/my/nginx

#docker stop - f $(docker ps -aq)

#docker rm -f $(docker ps -aq)

docker rmi -f $(docker images -q)

#docker system prune -f

docker pull localhost:5000/my/nginx

docker run -d localhost:5000/my/nginx
