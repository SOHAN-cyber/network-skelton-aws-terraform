resource "aws_route_table" "public-route" {
  vpc_id = aws_vpc.my-aws_vpc.id
  route {
    cidr_block = var.cidr_block
    gateway_id = aws_internet_gateway.my-gateway.id
  }

  tags = {
    Name = "Public-route"
  }
}

resource "aws_route_table" "private-route" {
  vpc_id = aws_vpc.my-aws_vpc.id
  route {
    cidr_block = var.cidr_block
    gateway_id = aws_nat_gateway.my-nat.id
  }
  tags = {
    Name = "Private-route"
  }
}
