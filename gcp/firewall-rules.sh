#!/bin/bash

gcloud compute firewall-rules create jenkins-rule \
    --priority 1000 \
    --allow tcp: 9090 \
    --target-tags jenkins

gcloud compute firewall-rules create mongodb-rule \
    --priority 1000 \
    --allow tcp: 27017 \
    --target-tags mongodb 

gcloud compute firewall-rules create node-rule \
    --priority 1000 \
    --allow tcp: 8080 \
    --target-tags node

gcloud compute firewall-rules create angular-rule \
    --priority 1000 \
    --allow tcp: 4200 \
    --target-tags angular
