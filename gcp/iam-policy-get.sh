#!/bin/bash
source config

#get IAM policy
gcloud projects get-iam-policy ${PROJECT_ID} >> ~/${SERVICEACCOUNT_NAME}/iam-policy

#in json format
#gcloud projects get-iam-policy --format=json $[PROJECT_ID] >> ~/${SERVICEACCOUNT_NAME}/iam-policy
