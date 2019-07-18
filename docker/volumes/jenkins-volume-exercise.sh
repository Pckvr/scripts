#!/bin/bash
  
#create a new volume
docker volume create jenkins

#Create an NGINX Container
docker run -d -p 8080:8080 --mount source=jenkins,destination=/var/jenkins_home --name jenkins jenkins

#enters as root user
#docker exec -u root -it jenkins bash
