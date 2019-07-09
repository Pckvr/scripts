#!/bin/bash

source config

#create directory for service account
mkdir ~/${SERVICEACCOUNT_NAME}

#create service account
gcloud iam service-accounts create --display-name=${SERVICEACCOUNT_NAME} test-service-account

