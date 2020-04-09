variable "environment" {
  description = "The name of the environment"
}

variable "project" {
  description = "The name of the project"
}

variable "region" {
  description = "AWS region"
}

variable "private_subnet_ids" {
  type = "list"
  description = "List of private subnets"
}

variable "bastion_host_sg_id" {
  description = "bastion host security group id"
}

variable "redis_engine" {
  description = "name of the elasticache engine"
}

variable "redis_node_type" {
  description = "elasticache node type"
}

variable "parameter_groupname" {
  description = "elasticache parameter group name"
}

variable "redis_engine_version" {
  description = "elasticache cluster engine version"
}

variable "redis_port" {
  description = "elasticache cluster port no."
}

variable "redis_maintainance_window" {
  description = "elasticache cluster maintainance window"
}

variable "redis_node_groups" {
  description = "elasticache no. of node groups"
}

variable "redis_allowed_cidrs" {
  description = "host cidrs for elasticache cluster"
  type = "list"
}

variable "vpc_id" {
  description = "VPC ID"
}