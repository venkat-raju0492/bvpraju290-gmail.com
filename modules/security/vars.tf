variable "redis_allowed_cidrs" {
  description = "cidr block for both bastion host and jenkins host"
  type = "list"
}

variable "redis_allowed_sg_ids" {
  description = "security group ids for eks cluster and bastion host"
  type = "list"
}

variable "common_tags" {
  description = "Common tags to apply to all resources"
  type = "map"
}

variable "vpc_id" {
  description = "VPC ID"
}

variable "environment" {
  description = "The name of the environmentironment"
}

variable "project" {
  description = "The name of the project"
}