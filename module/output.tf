output "vpc_id" {
  value = aws_vpc.vpc1.id
}
output "public_output_1" {
  value = aws_subnet.public1.id

}

output "public_output_2" {
  value = aws_subnet.public2.id
}

output "ip1_output" {
  value = aws_eip.ip1.id
}

output "ip2_output" {
  value = aws_eip.ip2.id
}

output "ig_id"{
  value = aws_internet_gateway.gw.id
}

output "rt1"{
  value = aws_route_table.internet_gateway_route.id

}

output "nat1_id" {
  value = aws_route_table.nat1.id

}
output "nat2_id" {
  value = aws_route_table.nat2.id
}

output "ng_id1" {
  value = aws_nat_gateway.gw1.id
}

output "ng_id2"{
  value = aws_nat_gateway.gw2.id
}