output "elasticache_endpoint" {
  value = "${module.Redis.primary_endpoint_address}"
}

output "redis_sg_id" {
  value = "${module.Security.redis_sg_id}"
}