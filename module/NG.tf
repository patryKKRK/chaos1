resource "aws_eip" "ip1" {
  vpc = true
}

resource "aws_eip" "ip2" {
  vpc = true
}

resource "aws_nat_gateway" "gw1" {
  allocation_id = var.ip1
  subnet_id     = var.public_subnet_id_1
}

resource "aws_nat_gateway" "gw2" {
  allocation_id = var.ip2
  subnet_id     = var.public_subnet_id_2
}
