locals {
  ip_filepath = "ips.json"
  json_type   = "application/json"

  common_tags = {
    Name        = "My bucket"
    Environment = var.environment
    ManagedBy   = "Terraform"
    Owner       = "Rolf Rodrigo Krueger"
  }
}
