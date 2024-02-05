# Use the Terraform image as the base image
FROM hashicorp/terraform:latest

ARG AWS_REGION
ARG AWS_ACCESS_KEY_ID
ARG AWS_SECRET_ACCESS_KEY

# Install the AWS CLI
RUN apk update && apk add --no-cache curl python3 aws-cli

# Configure AWS profile
RUN aws configure set profile.tf.region $AWS_REGION
RUN aws configure set profile.tf.aws_access_key_id $AWS_ACCESS_KEY_ID
RUN aws configure set profile.tf.aws_secret_access_key $AWS_SECRET_ACCESS_KEY

# Set the entrypoint to tail the stdout of the system
ENTRYPOINT ["tail", "-f", "/dev/null"]
