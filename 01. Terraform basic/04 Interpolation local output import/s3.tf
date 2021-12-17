resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"
  tags   = local.common_tags
}

resource "aws_s3_bucket" "manual" {
  bucket = "awsbucket-thd"

  tags = {
    CreatedOn  = "2021-12-17"
    ImportedOn = "2021-12-17"
    ManagedBy  = "Terraform"
  }
}

resource "aws_s3_bucket_object" "this" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${local.ip_filepath}"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  content_type = local.json_type
}

resource "aws_s3_bucket_object" "this2" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${random_pet.bucket.id}-${local.ip_filepath}"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  tags         = local.common_tags
  content_type = local.json_type
}
