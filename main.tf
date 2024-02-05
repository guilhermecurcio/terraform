terraform {
  required_version = "1.7.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.35.0"
    }
  }
  backend "s3" {}
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

module "s3" {
  source = "./s3"

  tags = var.tags
  env  = var.env
}

module "ec2" {
  source = "./ec2"

  tags = var.tags
}
