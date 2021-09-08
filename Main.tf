## backend data for terraform
terraform {
  # Terraform version at the time of writing this post
  required_version = ">= 0.12.24"

  terraform{
  backend "s3" {
    bucket = "sns-sqs-1"
    key    = "path/sns-sqs.tfstate"
    region = "ap-south-1"

  }
}
## random provider
provider "random" {}

## Provider us-east-1
provider "aws" {
  region = "ap-south-1"
}

