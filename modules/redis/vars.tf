variable "project" {
  description = "name of the project"
}

variable "environment" {
  description = "elasticache cluster environment name"
}

variable "common_tags" {
  description = "common tags to map"
  type = "map"
}

variable "redis_engine" {
  description = "elasticache cluster engine"
}

variable "redis_node_type" {
  description = "elasticache cluster node type"
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

variable "private_subnet_ids" {
  description = "elasticache subnet ids"
  type = "list"
}

variable "redis_replica_node_group" {
  description = "repicas per node group"
  default = 1
}

variable "redis_node_groups" {
  description = "no. of node groups"
}

variable "redis_securitygroup_id" {
  description = "elasticache security group id"
  type = "list"
}

