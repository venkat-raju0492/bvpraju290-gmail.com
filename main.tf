provider "aws" {
  region = "${var.region}"
}

locals {
  common_tags = {
    Project = "${var.project}"
    Environment = "${var.environment}"
    CreatedBy = "Terraform"
  }
}

module "Security" {
  source = "./modules/security"
  vpc_id = "${var.vpc_id}"
  project = "${var.project}"
  common_tags = "${local.common_tags}"
  environment = "${var.environment}"
  redis_allowed_cidrs = "${var.redis_allowed_cidrs}"
  redis_allowed_sg_ids = ["${var.bastion_host_sg_id}"]
}


module "Redis" {
  source = "./modules/redis/"
  project = "${var.project}"
  environment = "${var.environment}"
  redis_engine = "${var.redis_engine}"
  redis_node_type = "${var.redis_node_type}"
  parameter_groupname = "${var.parameter_groupname}"
  redis_engine_version = "${var.redis_engine_version}"
  redis_port = "${var.redis_port}"
  redis_maintainance_window = "${var.redis_maintainance_window}"
  private_subnet_ids = "${var.private_subnet_ids}"
  redis_securitygroup_id = ["${module.Security.elasticache_securitygroup_id}"]
  common_tags = "${local.common_tags}"
  redis_node_groups = "${var.redis_node_groups}"
}
