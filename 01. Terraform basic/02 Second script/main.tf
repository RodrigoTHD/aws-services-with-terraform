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
  region = "sa-east-1"

  #access_key = var.aws_access_key
  #secret_key = var.aws_secret_key
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
