resource "aws_vpc" "my-aws_vpc" {
  cidr_block           = var.cidr-block
  instance_tenancy     = var.tenancy-vpc
  enable_dns_hostnames = var.dns

  tags = {
    Name = "${var.tag-vpc}"
  }
}

resource "aws_eip" "eip" {
  vpc = true
}


