#!/bin/bash

# Set the working directory to the location of this script
cd "$(dirname "$0")"

# Run terraform plan command
terraform fmt -recursive
terraform plan --out="$TF_VAR_env-tfplan.out"
