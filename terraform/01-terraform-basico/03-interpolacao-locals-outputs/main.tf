terraform {
  required_version = "1.12.1"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.23.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs
provider "aws" {
  region  = var.aws_region # EUA Virginia -> us-east-1
  profile = var.aws_profile


}