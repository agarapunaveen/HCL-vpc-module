terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.48.0"
    }
  }
   backend "s3" {
    bucket="52297389-bucket"
    key="dynaic-state"
    dynamodb_table="lock-state"
    region="us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}
