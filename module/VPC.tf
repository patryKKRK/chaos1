resource "aws_vpc" "vpc1" {
  cidr_block       = var.cidr_vpc
  instance_tenancy = "default"

  tags = {
    Name = "vpc1"
  }
}