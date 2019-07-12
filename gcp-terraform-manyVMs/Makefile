SHELL := /bin/bash
VAR_DIR = "variables"
TERRAFORM_APPLY = "terraform apply -auto-approve -var-file="
TERRAFORM_DESTROY = "terraform destroy -auto-approve -var-file="

terraform-init:
	@terraform init

mongodb-apply:
	@"${TERRAFORM_APPLY}${VAR_DIR}"/mongodb.tfvars

mongodb-destroy:
	@"${TERRAFORM_DESTROY}${VAR_DIR}"/mongodb.tfvars

api-apply:
	@"${TERRAFORM_APPLY}${VAR_DIR}"/api.tfvars

api-destroy:
	@"${TERRAFORM_DESTROY}${VAR_DIR}"/api.tfvars

.PHONY = terraform-init mongodb-apply mongodb-destroy api-apply api-destroy