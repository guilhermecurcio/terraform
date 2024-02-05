#!/bin/bash

# Set the working directory to the location of this script
cd "$(dirname "$0")"

# Run terraform apply command
terraform apply -auto-approve "$TF_VAR_env-tfplan.out"
