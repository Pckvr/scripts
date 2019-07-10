#!/bin/bash
source config

mkdir ~/${PROJECT_NAME}

gcloud projects create $PROJECT_ID --name=$PROJECT_NAME --set-as-default

