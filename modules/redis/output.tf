output "primary_endpoint_address" {
  value = "${aws_elasticache_replication_group.elasticache_redis.primary_endpoint_address}"
}
