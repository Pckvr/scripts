#!/bin/bash
  
docker build -t docker.io/jpeckover/multistage-exercise:latest .

docker run -d --name multistage-exercise -p 8080:8080 docker.io/jpeckover/multistage-exercise:latest
