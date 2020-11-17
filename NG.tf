resource "aws_eip" "ip1" {
  vpc = true
}

resource "aws_eip" "ip2" {
  vpc = true
}

resource "aws_nat_gateway" "gw1" {
  allocation_id = aws_eip.ip1.id
  subnet_id     = aws_subnet.public1.id
}

resource "aws_nat_gateway" "gw2" {
  allocation_id = aws_eip.ip2.id
  subnet_id     = aws_subnet.public2.id
}
