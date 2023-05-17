provider "aws" {
  region     = "us-east-2"
  access_key = ""
  secret_key = ""
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}