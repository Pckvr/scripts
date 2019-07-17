#!/bin/bash

#create network
docker network create my-network

#create jenkins container
docker run -d --network my-network --name jenkins jenkins

#Create an NGINX Container Using Our Configurations
docker run -d --network my-network -v $(pwd)/nginx.conf:/etc/nginx/nginx.conf -p 80:80 --name nginx nginx

