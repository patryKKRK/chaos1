terraform {
  backend "s3" {
    bucket  = "patrykorlikowski1"
    key     = "chaos1.tfstate"
    region  = "eu-central-1"
    profile = "chaos-playground"
  }
}
provider "aws" {
  profile = "chaos"
  region = "eu-central-1"
}


module "networking" {
  source = "./module"
  cidr_vpc = "172.124.0.0/16"
  vpc_id = module.networking.vpc_id

  public_subnet_id_1 = module.networking.public_output_1
  public_subnet_id_2 = module.networking.public_output_2
  ip1 = module.networking.ip1_output
  ip2 = module.networking.ip2_output
  ig_id = module.networking.ig_id
  ng_id1 = module.networking.ng_id1
  ng_id2 = module.networking.ng_id2
  rt1 = module.networking.rt1
  nat1_id = module.networking.nat1_id
  nat2_id = module.networking.nat2_id
}