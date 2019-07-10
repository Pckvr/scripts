#!/bin/bash

source 00_default_variables

#create directory for service account
mkdir ~/${var.project}+service_account

#create service account
gcloud iam service-accounts create --display-name=${var.project}+service_account test-service-account

