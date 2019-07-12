SHELL := /bin/bash
VAR_DIR = "variables"
TERRAFORM_APPLY = "terraform apply -auto-approve -var-file="
TERRAFORM_DESTROY = "terraform destroy -auto-approve -var-file="

terraform-init:
	@terraform init

autopool-apply:
	@"${TERRAFORM_APPLY}${VAR_DIR}"/pool-manager.tfvars

autopool-destroy:
	@"${TERRAFORM_DESTROY}${VAR_DIR}"/pool-manager.tfvars


.PHONY = terraform-init pool-manager-apply pool-manager-destroy