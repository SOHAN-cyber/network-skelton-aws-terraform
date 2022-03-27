output "aws_nat_gateways" {
  description = "This is to ouput nat gateway"
  value = aws_nat_gateway.my-nat.id
}

output "aws_eip" {
  description = "This is to output the Elastic ip address associated with NAT gateway"
  value = aws_eip.eip
}

output "internet_gateway" {
  description = "this is ouput the igw associated with VPC"
  value = aws_internet_gateway.my-gateway.id
}

output "VPC" {
  description = "this is output VPC id"
  value = aws_vpc.my-aws_vpc.id
}

output "Security_group" {
  description = "this is to output Security group ID"
  value = aws_security_group.Security-NSA.id
}

output "private-subnet" {
  description = "this is to output the subnet id "
  value = aws_subnet.public-subnet-1.id
}

output "public-subnet" {
    description = "this is to output the subnet id of private subnet"
    value = aws_subnet.private-subnet-1.id
}