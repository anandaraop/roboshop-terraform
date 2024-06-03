env           = "dev"
instance_type = "t3.small"
zone_id       = "Z02385991VFZVIKN8WPK8"

# VPC
vpc_cidr_block         = "10.10.0.0/16"
default_vpc_cidr       = "172.31.0.0/16"
default_vpc_id         = "vpc-0a8e3e6a0d6cb90d9"
default_route_table_id = "rtb-0b9a867762d6530ba"

frontend_subnets   = ["10.10.0.0/24", "10.10.1.0/24"]
backend_subnets    = ["10.10.2.0/24", "10.10.3.0/24"]
db_subnets         = ["10.10.4.0/24", "10.10.5.0/24"]
public_subnets     = ["10.10.6.0/24", "10.10.7.0/24"]
availability_zones = ["us-east-1a", "us-east-1b"]
bastion_nodes      = ["172.31.2.254/32"]
prometheus_nodes   = ["172.31.89.157/32"]
certificate_arn    = "arn:aws:acm:us-east-1:633788536644:certificate/274d4c80-dc76-4296-b3ed-d959cbe837ba"
kms_key_id         = "arn:aws:kms:us-east-1:633788536644:key/efe13dd4-b31e-405a-ad13-0526cce7fd93"

# ASG
max_capacity = 5
min_capacity = 1


docdb = {
  main = {
    family         = "docdb4.0"
    instance_class = "db.t3.medium"
    instance_count = 1
    engine_version = "4.0.0"

  }
}

rds = {
  main = {
    allocated_storage   = 20
    engine_version      = "5.7.44"
    family              = "mysql5.7"
    instance_class      = "db.t3.micro"
    skip_final_snapshot = true
    storage_type        = "gp3"
  }
}

rabbitmq = {
  main = {
    component     = "rabbitmq"
    instance_type = "t3.small"
  }
}

elasticache = {
  main = {
    engine_version          = "6.2"
    family                  = "redis6.x"
    node_type               = "cache.t4g.micro"
  }
}

