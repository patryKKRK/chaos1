resource "aws_route_table" "internet_gateway_route" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.ig_id
  }
}

resource "aws_route_table_association" "ig_association1" {
  subnet_id      = var.public_subnet_id_1
  route_table_id = var.rt1
}

resource "aws_route_table_association" "ig_association2" {
  subnet_id      = var.public_subnet_id_2
  route_table_id = var.rt1
}

resource "aws_route_table" "nat1" {
  vpc_id = var.vpc_id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.ng_id1
  }
}

resource "aws_route_table_association" "ng_association_1" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = var.nat1_id
}


resource "aws_route_table" "nat2" {
  vpc_id = var.vpc_id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = var.ng_id2
  }
}

resource "aws_route_table_association" "ng_association_2" {
  subnet_id      = aws_subnet.private2.id
  route_table_id = var.nat2_id
}