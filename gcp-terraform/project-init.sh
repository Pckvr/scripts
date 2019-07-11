#!/bin/bash
sudo apt install -y jq


project_name=terraform-mean-app


echo "*****creating project*****"

#project id + timestamp to ensure unique
project_id="${project_name}-$(date +%s)"
gcloud -q projects create ${project_id} --name="${project_name}" --set-as-default

#automatically enables billing
echo "gathering project & billing account IDs"
billing_id=$(gcloud beta billing accounts list --format json \
        | jq -r '.[0].name' \
        | awk -F'/' '{print $2}')
echo "enabling billing"
gcloud beta billing projects link ${project_id} --billing-account ${billing_id}

echo "enabling relevant apis"
gcloud services enable iam.googleapis.com compute.googleapis.com

echo "creating compute admin service account ${project_name}"
service_account_name="${project_name} service account"
gcloud iam service-accounts create terraform --display-name="${service_account_name}"
service_account_email=$(gcloud iam service-accounts list --filter="displayName:${service_account_name}" --format json | jq -r '.[0].email')
while [[ "${service_account_email}" == "null" ]]; do
        echo "waiting for service account to be created"        
        service_account_email=$(gcloud iam service-accounts list --filter="displayName:${service_account_name}" --format json | jq -r '.[0].email')
done
echo "created service account: ${service_account_email}"

gcloud projects add-iam-policy-binding ${project_id} --member="serviceAccount:${service_account_email}" --role="roles/compute.admin"
mkdir -p ~/.gcp

gcloud iam service-accounts keys create ~/.gcp/terraform_key.json --iam-account ${service_account_email}
