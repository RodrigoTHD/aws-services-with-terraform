variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_access_key" {
  type        = string
  description = ""
}

variable "aws_secret_key" {
  type        = string
  description = ""
}

variable "aws_instance_type" {
  type        = string
  description = ""
}

variable "aws_instance_tags" {
  type        = map(string)
  description = ""
}
