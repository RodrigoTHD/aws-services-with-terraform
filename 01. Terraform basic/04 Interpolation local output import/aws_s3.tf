resource "aws_s3_bucket" "manual" {
  bucket = "bucket-imported-manual"

  tags = {
    CreatedOn  = "2021-12-17"
    ImportedOn = "2021-12-17"
    ManagedBy  = "Terraform"
  }
}

resource "aws_s3_bucket" "this" {
  bucket = "bucket-${var.environment}-${random_uuid.bucket1.result}"
  tags   = local.common_tags
}

resource "aws_s3_bucket_object" "this" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${random_uuid.bucket_obj1.result}-${local.ip_filepath}"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  content_type = local.json_type
}

resource "aws_s3_bucket_object" "this2" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${random_uuid.bucket_obj2.result}-${local.ip_filepath}"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  tags         = local.common_tags
  content_type = local.json_type
}
