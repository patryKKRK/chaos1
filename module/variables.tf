variable "private_cidr" {
  type    = "list"
  default = ["172.124.5.0/24", "172.124.6.0/24"]
}

variable "public_cidr" {
  type    = "list"
  default = ["172.124.1.0/24", "172.124.2.0/24"]
}

variable "cidr_vpc" {
  default = "172.124.0.0/16"
}

variable "tags" {
  type = "map"
  default = {
    internet_gateway = "main"
    private_subnet_1 = "private1"
    private_subnet_2 = "private2"
    public_subnet_1  = "public1"
    public_subnet_2  = "public2"
    vpc              = "vpc1"

  }
}

variable "tag" {

}