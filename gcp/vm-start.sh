#!/bin/bash
source vm-config

gcloud compute instances start ${VM_NAME} --zone ${VM_ZONE}
