resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "tf-test-bucket-first-script"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}
