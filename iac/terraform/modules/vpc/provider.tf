provider "aws" {
  region     = "us-east-2"
  access_key = "AKIA5MNWQHFFTHCQK7XZ"
  secret_key = "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"
}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}