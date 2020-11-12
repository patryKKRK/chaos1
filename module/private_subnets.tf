resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = var.private_cidr[0]
  availability_zone = "eu-central-1a"

  tags = {
    Name = "private1"
  }
}

resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = var.private_cidr[1]
  availability_zone = "eu-central-1b"

  tags = {
    Name = "private2"
  }
}