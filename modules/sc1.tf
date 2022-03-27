
locals {
  ports = var.port_number
}

resource "aws_security_group" "Security-NSA" {
  name        = "Security-NSA"
  description = "This is security group 1"
  vpc_id      = aws_vpc.my-aws_vpc.id

  dynamic "ingress" {
   for_each = local.ports
   content {
      description = "description ${ingress.key}"
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
   }
  }

  dynamic "egress" {
     for_each = local.ports
    content {
      description = "description ${egress.key}"
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
   } 
  }
  tags = {
    Name = "NSA Security Group"
  }
}