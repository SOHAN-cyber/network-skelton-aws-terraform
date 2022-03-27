//Creating an Nat Gateway

resource "aws_nat_gateway" "my-nat" {
  allocation_id = aws_eip.eip.id
  subnet_id     = aws_subnet.public-subnet-1.id

  tags = {
    Name = "NAT-GATE"
  }
}

//Creating an internet Gateway

resource "aws_internet_gateway" "my-gateway" {
  vpc_id = aws_vpc.my-aws_vpc.id

  tags = {
    Name = "MY-IGW"
  }
}

//So Attaching internet gateway

