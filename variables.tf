variable "redis_cluster_name" {
  description = "Give name to this redis cluster. Standard practice to use project name"
}

variable "subnet_group_name" {
   description =  "Name of the subnet group to be used for the cache cluster"
}

variable "sg_group_id" {
   description = "One or more VPC security groups associated with the cache cluster"
}

variable "vpc_subnet_id" {
   description = "subnet id to use"
}

variable "PROJECT_NAME" {
   description = "project name"
}

variable "cache_no" {
   description = "number of cache"
}

variable "az_list" {
   description = "list of AZ zones"
}
