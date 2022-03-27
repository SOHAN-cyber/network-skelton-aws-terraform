resource "aws_subnet" "public-subnet-1" {
  vpc_id                  = aws_vpc.my-aws_vpc.id
  cidr_block              = var.public-cidr-subnet
  map_public_ip_on_launch = true
  availability_zone       = var.AZs[1]

  tags = {

    Name = element(var.subnet_name, 1)
  }
}

resource "aws_subnet" "private-subnet-1" {
  vpc_id            = aws_vpc.my-aws_vpc.id
  cidr_block        = var.private-cidr-subnet
  availability_zone = var.AZs[0]

  tags = {
    Name = element(var.subnet_name, 0)
  }
}
