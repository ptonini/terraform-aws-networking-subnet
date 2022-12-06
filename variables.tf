variable "name" {}

variable "cidr_block" {}

variable "vpc_id" {}

variable "availability_zone" {}

variable "map_public_ip_on_launch" {
  default = false
}

variable "tags" {
  default = {}
}

variable "route_table_ids" {
  type    = set(string)
  default = []
}