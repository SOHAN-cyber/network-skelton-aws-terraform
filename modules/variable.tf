variable "cidr-block" {
  description = "This is for cidr block"
  type        = string
  default     = "172.2.0.0/16"
}

variable "dns" {
  description = "This is for cidr block"
  type        = string
  default     = "false"
}

variable "tag-vpc" {
  description = "This is for cidr block"
  type        = string
  default     = "my-aws_vpc"
}

variable "tenancy-vpc" {
  description = "This is for cidr block"
  type        = string
  default     = "default"
}

variable "public-cidr-subnet" {
  description = "This is for cidr block"
  type        = string
  default     = "172.2.0.128/26"
}

variable "private-cidr-subnet" {
  description = "This is for cidr block"
  type        = string
  default     = "172.2.128.0/22"
}

variable "port_number" {
  description = "this is to open the port range"
  type        = list(number)
  default     = [22, 80, 443, 2017, 5456, 7868]
}

variable "region" {
  description = "Region in which you want to create network"
  default     = "ap-south-1"
  sensitive   = false
  type        = string
}

variable "AZs" {
  description = "this is for list of azs available"
  default     = "ap-south-1a"
  type        = string
}

variable "name" {
  description = "Name tag of the VPC"
  type        = string
  default     = "sohan"
}

variable "ingress_port_range" {
  description = "The to port to match rule in NACl ingress"
  type        = list(number)
  default     = [80, 443, 22]
}

variable "nacl_egress_rule_no" {
  description = "Starting rule number for the entry in NACL egress rule"
  default     = 300
}

variable "nacl_egress_protocol" {
  description = "Protocol on which NACL egress rule applied. If using the -1 'all' protocol,"
  default     = "tcp"
}



variable "nacl_egress_action" {
  description = "Action to allow or deny the traffic that matches the rule"
  default     = "allow"
}

variable "cidr_block" {
  description = "The CIDR block for the VPC."
  type        = string
  default     = "0.0.0.0/0"
}

variable "nacl_egress_from_port" {
  description = "The from port to match rule in NACl egress"
  type        = list(number)
  default     = [80, 443, 22]
}

variable "nacl_egress_to_port" {
  description = "The to port to match rule in NACl egress"
  type        = list(number)
  default     = [80, 443, 22]
}

variable "nacl_ingress_to_port" {
  description = "The to port to match rule in NACl ingress"
  type        = list(number)
  default     = [80, 443, 22]
}

variable "nacl_ingress_rule_no" {
  description = "Starting rule number for the entry in NACL ingress rule"
  default     = 500
}

variable "nacl_ingress_protocol" {
  description = "Protocol on which NACL ingress rule applied. If using the -1 'all' protocol,"
  default     = "tcp"
}

variable "nacl_ingress_action" {
  description = "Action to allow or deny the traffic that matches the rule"
  default     = "allow"
}

variable "nacl_ingress_from_port" {
  description = "The from port to match rule in NACl ingress"
  type        = list(number)
  default     = [80, 443, 22]
}

variable "subnet_name" {
  description = "this is used to create subnet name"
  default     = ["private", "public"]
  type        = list(any)
}
