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
    environment = "dev"
    application = "test"

  }
}