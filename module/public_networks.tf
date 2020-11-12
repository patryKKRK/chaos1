resource "aws_subnet" "public1" {
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = var.public_cidr[0]
  availability_zone = "eu-central-1a"

  tags = {
    Name = "public1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id            = aws_vpc.vpc1.id
  cidr_block        = var.public_cidr[1]
  availability_zone = "eu-central-1b"

  tags = {
    Name = "public2"
  }
}