#!/bin/bash

source vm-config

gcloud compute instances create ${VM_NAME} \
	--zone ${VM_ZONE} \
	--image-family ${VM_IMAGE_FAMILY} \
	--image-project ${VM_IMAGE_PROJECT} \
	--custom-cpu ${VM_CPU_AMOUNT} \
	--custom-memory ${VM_MEMORY_AMOUNT} \
	--boot-disk-size ${VM_BOOT_DISK_SIZE} 
	#--tags ${VM_TAGS}
