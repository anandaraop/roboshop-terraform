variable "component" {
  default = "docdb"
}
variable "env" {}
variable "vpc_id" {}
variable "server_app_port_sg_cidr" {}
variable "family" {}
variable "subnet_ids" {}
variable "master_username" {}
variable "master_password" {}

variable "instance_count" {}
variable "instance_class" {}

