resource "aws_elasticache_replication_group" "elasticache_redis" {
  replication_group_id          = "${var.project}-redis-${var.environment}"
  replication_group_description = "Redis cluster for ElastiCache"
  engine                        = "${var.redis_engine}"
  node_type                     = "${var.redis_node_type}"
  parameter_group_name          = "${var.parameter_groupname}"
  engine_version                = "${var.redis_engine_version}"
  port                          = "${var.redis_port}"
  maintenance_window            = "${var.redis_maintainance_window}"
  subnet_group_name             = "${aws_elasticache_subnet_group.redis_subnetgroup.name}"
  security_group_ids            = "${var.redis_securitygroup_id}"
  cluster_mode {
    replicas_per_node_group = "${var.redis_replica_node_group}"
    num_node_groups         = "${var.redis_node_groups}"
  }
  tags = "${merge(var.common_tags, map(
    "Name", "${var.project}-redis-${var.environment}"
  ))}"
}

resource "aws_elasticache_subnet_group" "redis_subnetgroup" {
  name                 = "${var.project}-redis-sn-${var.environment}"
  subnet_ids           = "${var.private_subnet_ids}"
}

