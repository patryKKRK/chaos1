resource "aws_route_table" "internet_gateway_route" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }
}

resource "aws_route_table_association" "ig_association1" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.internet_gateway_route.id
}

resource "aws_route_table_association" "ig_association2" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.internet_gateway_route.id
}

resource "aws_route_table" "nat1" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.gw1.id
  }
}

resource "aws_route_table_association" "ng_association_1" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.nat1.id
}


resource "aws_route_table" "nat2" {
  vpc_id = aws_vpc.vpc1.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.gw2.id
  }
}

resource "aws_route_table_association" "ng_association_2" {
  subnet_id      = aws_subnet.private2.id
  route_table_id = aws_route_table.nat2.id
}