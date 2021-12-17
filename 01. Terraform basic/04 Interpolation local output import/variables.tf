variable "aws_region" {
  type        = string
  description = ""
  default     = "sa-east-1"
}

variable "aws_access_key" {
  type        = string
  description = ""
}

variable "aws_secret_key" {
  type        = string
  description = ""
}

variable "environment" {
  type    = string
  default = "dev"
}
