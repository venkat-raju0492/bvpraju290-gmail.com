output "redis_sg_id" {
  value = "${aws_security_group.elasticache_securitygroup.id}"
}
