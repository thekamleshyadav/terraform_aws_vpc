provider "aws" {
  region = "ap-southeast-1"
}

module "vpc" {
  source = "../"

  vpc_enabled                               = true
  cidr_block                                = "10.10.0.0/16"
  enable_flow_log                           = false
  additional_cidr_block                     = ["172.3.0.0/16", "172.2.0.0/16"]
  enable_dhcp_options                       = false
  dhcp_options_domain_name                  = "service.consul"
  dhcp_options_domain_name_servers          = ["127.0.0.1", "10.10.0.2"]
  enabled_ipv6_egress_only_internet_gateway = false
  availability_zone                         = ["ap-southeast-1a", "ap-southeast-1b"]
  subnet_cidr_block                         = "10.10.0.0/24"

}
