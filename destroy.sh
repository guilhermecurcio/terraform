#!/bin/bash

# Set the working directory to the location of this script
cd "$(dirname "$0")"

# Run terraform destroy command
terraform destroy -auto-approve
