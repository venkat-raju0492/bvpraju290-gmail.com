resource "aws_security_group" "elasticache_securitygroup" {
  name              = "${var.project}-redis-sg-${var.environment}"
  description       = "Allow elasticache port to communicate with other services"
  vpc_id            = "${var.vpc_id}"

  ingress {
    description     = "Allow port to connect with bastion host and dev Jenkins"
    from_port       = 6379
    to_port         = 6379
    protocol        = "tcp"
    cidr_blocks     = "${var.redis_allowed_cidrs}"
  }

  ingress {
    description     = "Allow port to connect with eks workers and bastion"
    from_port       = 6379
    to_port         = 6379
    protocol        = "tcp"
    security_groups = "${var.redis_allowed_sg_ids}"
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags = "${merge(var.common_tags, map(
    "Name", "${var.project}-redis-sg-${var.environment}"
  ))}"

}