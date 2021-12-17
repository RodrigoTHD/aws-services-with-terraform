resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "tf-test-bucket-second-script"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Rolf Rodrigo Krueger"
  }
}
