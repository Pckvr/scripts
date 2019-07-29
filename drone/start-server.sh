#!/bin/bash

GITLAB_CLIENT_ID=8112e02dc79c2671063b566636998264c9bd51169f37888e2b632082bf9f5dec
GITLAB_CLIENT_SECRET=a0be2b9b9d253247df42fa07da6dc111eb405d64383f8cf74c1850400eeccb63
SERVER_HOST=35.246.1.239
SERVER_PROTO=http

docker run \
 --volume=/var/run/docker.sock:/var/run/docker.sock \
 --volume=/var/lib/drone:/data \
 --env=DRONE_GIT_ALWAYS_AUTH=false \
 --env=DRONE_GITLAB_SERVER=https://gitlab.com \
 --env=DRONE_GITLAB_CLIENT_ID=${GITLAB_CLIENT_ID} \
 --env=DRONE_GITLAB_CLIENT_SECRET=${GITLAB_CLIENT_SECRET} \
 --env=DRONE_RUNNER_CAPACITY=2 \
 --env=DRONE_SERVER_HOST=${SERVER_HOST} \
 --env=DRONE_SERVER_PROTO=${SERVER_PROTO} \
 --env=DRONE_TLS_AUTOCERT=false \
 --env=DRONE_USER_CREATE=username:admin,admin:true \
 --publish=80:80 \
 --publish=443:443 \
 --restart=always \
 --detach=true \
 --name=drone \
 drone/drone:1

./public_ip
