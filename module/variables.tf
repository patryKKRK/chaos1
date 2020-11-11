variable "cidr_vpc" {
}
variable "vpc_id" {

}
variable "private_cidr" {
  type    = "list"
  default = ["172.124.5.0/24", "172.124.6.0/24"]
}

variable "public_cidr" {
  type    = "list"
  default = ["172.124.1.0/24", "172.124.2.0/24"]
}

variable "public_subnet_id_1" {

}

variable "public_subnet_id_2" {

}

variable "ip1" {

}

variable "ip2" {

}

variable "ig_id" {

}

variable "rt1" {

}

variable "nat1_id" {

}

variable "nat2_id" {

}

variable "ng_id1" {

}
variable "ng_id2" {

}


