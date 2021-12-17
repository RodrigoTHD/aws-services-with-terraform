terraform {
  required_version = "1.1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.69.0"
    }
  }
}


provider "aws" {
  region = "us-east-1"

  access_key = "AKIAS6VCIJ67TTHBXVPE"
  secret_key = "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"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-update-159753aaa321321"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Rolf Rodrigo Krueger"
  }
}
