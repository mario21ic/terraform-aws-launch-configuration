variable "region" {
  description = "aws region"
}

variable "name" {
  description = "elb name"
}

variable "ami_name" {
  description = "elb name"
}

variable "iam_instance_profile" {
  type        = "string"
  description = "iam profile"
}
variable "key_name" {
  description = "Key name"
}

variable "instance_type" {
  description = "Instance type"
}

variable "security_group_access" {
  description = "Security group admin"
}

/* Externals */
variable "vpc_id" {
  description = "vpc id"
}