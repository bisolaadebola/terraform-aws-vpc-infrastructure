# Elastic IP for NAT Gateway in us-east-1a
resource "aws_eip" "nat_1a" {
  domain = "vpc"

  tags = {
    Name = "nat-eip-1a"
  }
}

# Elastic IP for NAT Gateway in us-east-1b
resource "aws_eip" "nat_1b" {
  domain = "vpc"

  tags = {
    Name = "nat-eip-1b"
  }
}

# NAT Gateway in public subnet us-east-1a
resource "aws_nat_gateway" "nat_1a" {
  allocation_id = aws_eip.nat_1a.id
  subnet_id     = aws_subnet.public_1a.id

  tags = {
    Name = "nat-gateway-1a"
  }

  depends_on = [
    aws_internet_gateway.main
  ]
}

# NAT Gateway in public subnet us-east-1b
resource "aws_nat_gateway" "nat_1b" {
  allocation_id = aws_eip.nat_1b.id
  subnet_id     = aws_subnet.public_1b.id

  tags = {
    Name = "nat-gateway-1b"
  }

  depends_on = [
    aws_internet_gateway.main
  ]
}