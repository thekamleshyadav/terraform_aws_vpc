
##################################(vpc)######################################

variable "vpc_enabled" {
  type    = bool
  default = true
  description = "Flag to control the vpc creation."
}

variable "cidr_block" {
  type = string
  default = ""
}

variable "instance_tenancy" {
  type = string
  default = "default"
}

variable "enable_dns_hostnames" {
  type = bool
  default = true
}

variable "enable_dns_support" {
  type = bool
  default = true
}

variable "enable_classiclink" {
  type = bool
  default = false
}

variable "enable_classiclink_dns_support" {
  type = bool
  default = false
}

variable "ipv4_ipam_pool_id" {
  type = string
  default = ""
}

variable "ipv4_netmask_length" {
  type = string
  default = null
}

variable "enable_flow_log" {
  type = bool
  default = false
}

variable "additional_cidr_block" {
  type = list(string)
  default = []
}

variable "enable_dhcp_options" {
  type = string
  default = ""
}

variable "dhcp_options_domain_name" {
  type = string
  default = ""
}

variable "dhcp_options_domain_name_servers" {
  type = list(string)
  default = ["AmazonProvidedDNS"]
}

variable "enabled_ipv6_egress_only_internet_gateway" {
  type = bool
  default = false
}

variable "availability_zone" {
  type = list(string)
  default = []
}

variable "subnet_cidr_block" {
  type = string
  default = ""
}

variable "tags" {
  type = map(string)
  default = {}
}