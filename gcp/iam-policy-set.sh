#!/bin/bash
source config

#set iam policy from file
gcloud projects set-iam-policy ${PROJECT_ID} ${IAM_POLICY_FILE}

#in json format
#gcloud projects set-iam-policy --format=json ${PROJECT_ID} ${IAM_POLICY_FILE}
