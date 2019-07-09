#!/bin/bash
source vm-config

gcloud compute instances stop ${VM_NAME} --zone europe-west2-c

