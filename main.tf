resource "aws_elasticache_subnet_group" "subnet" {
  name       = var.subnet_group_name
  subnet_ids = var.vpc_subnet_id
}

resource "aws_elasticache_replication_group" "redis" {
  availability_zones            = var.az_list
  replication_group_id          = format("%s-prod", var.PROJECT_NAME)
  replication_group_description = "test description"
  node_type                     = "cache.t3.micro"
  number_cache_clusters         = var.cache_no
  parameter_group_name          = "default.redis6.x"
  port                          = 6379
  engine 			= "redis"
  engine_version 		= "6.x"
  security_group_ids 		= [var.sg_group_id]
  subnet_group_name 		= aws_elasticache_subnet_group.subnet.name
  tags                          = {Project = var.PROJECT_NAME}
}
