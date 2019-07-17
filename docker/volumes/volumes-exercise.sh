#!/bin/bash

#create a new volume
docker volume create webpage

#Create an NGINX Container
docker run -d -p 80:80 --mount source=webpage,destination=/usr/share/nginx/html --name nginx nginx

#docker exec -it nginx bash

