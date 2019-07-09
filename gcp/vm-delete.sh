#!/bin/bash
source vm-config

echo "Confirm the name of the vm to be deleted"
read VM_NAME_DELETE

gcloud -q compute instances delete ${VM_NAME_DELETE} --zone ${VM_ZONE}
