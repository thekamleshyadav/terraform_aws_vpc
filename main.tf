hello 
#######################################(vpc)#####################################

resource "aws_vpc" "main" {
  count = var.vpc_enabled ? 1 : 0
  tags = {
    Name = "test"
  }
  cidr_block                       = var.cidr_block
  instance_tenancy                 = var.instance_tenancy
  enable_dns_hostnames             = var.enable_dns_hostnames
  enable_dns_support               = var.enable_dns_support
  enable_classiclink               = var.enable_classiclink
  enable_classiclink_dns_support   = var.enable_classiclink_dns_support
  ipv4_ipam_pool_id                = var.ipv4_ipam_pool_id
  ipv4_netmask_length              = var.ipv4_ipam_pool_id  != "" ? var.ipv4_netmask_length : null
  assign_generated_ipv6_cidr_block = true


}
