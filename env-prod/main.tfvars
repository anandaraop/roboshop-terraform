env           = "prod"
instance_type = "t3.small"
zone_id       = "Z02385991VFZVIKN8WPK8"

# VPC
vpc_cidr_block         = "10.20.0.0/24"
default_vpc_cidr       = "172.31.0.0/16"
default_vpc_id         = "vpc-0a8e3e6a0d6cb90d9"
default_route_table_id = "rtb-0b9a867762d6530ba"

frontend_subnets   = ["10.20.0.0/27", "10.20.0.32/27"]
backend_subnets    = ["10.20.0.64/27", "10.20.0.96/27"]
db_subnets         = ["10.20.0.128/27", "10.20.0.160/27"]
public_subnets     = ["10.20.0.192/27", "10.20.0.224/27"]
availability_zones = ["us-east-1a", "us-east-1b"]
bastion_nodes      = ["172.31.2.254/32"]
prometheus_nodes   = ["172.31.89.157/32"]
certificate_arn    = "arn:aws:acm:us-east-1:633788536644:certificate/274d4c80-dc76-4296-b3ed-d959cbe837ba"
kms_key_id         = "arn:aws:kms:us-east-1:633788536644:key/efe13dd4-b31e-405a-ad13-0526cce7fd93"

# ASG
max_capacity = 5
min_capacity = 2

