variable "aws_region" {
  type        = string
  description = ""
  default     = "sa-east-1"
}

variable "aws_access_key" {
  type        = string
  description = ""
  default     = "AKIAS6VCIJ67TTHBXVPE"
}

variable "aws_secret_key" {
  type        = string
  description = ""
  default     = "6VXjii03D6a/aSEwp5YHb3S7f5V3w7u6nrL56gO+"
}

variable "environment" {
  type    = string
  default = "dev"
}
