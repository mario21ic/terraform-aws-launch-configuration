variable "region" {
  description = "aws region"
}

variable "env" {
  description = "Environment name"
}

variable "name" {
  description = "Name"
}

variable "ami_name" {
  description = "ami name"
}

variable "iam_role" {
  type        = "string"
  description = "iam role"
}
variable "key_name" {
  description = "Key name"
}

variable "instance_type" {
  description = "Instance type"
}

variable "security_group_ids" {
  type = "list"
  default = []
  description = "Security group ids"
}

variable "volume_size" {
  default = 30
  description = "Size in gb"
}

/* Externals */
//variable "vpc_id" {
//  description = "vpc id"
//}
