#!/bin/bash
# Destroy Terraform resources in the chosen environment

ENV=${1:-dev}

echo "Destroying Terraform in envs/$ENV ..."
cd envs/$ENV || exit 1

terraform destroy -auto-approve
