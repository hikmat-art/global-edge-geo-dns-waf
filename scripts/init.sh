#!/bin/bash
# Initialize Terraform in the chosen environment

ENV=${1:-dev}

echo "Initializing Terraform in envs/$ENV ..."
cd envs/$ENV || exit 1

terraform init
terraform validate
