
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.2.0"

  name                 = "education-vpc"
  cidr                 = "10.0.0.0/16"
  azs                  = data.aws_availability_zones.available.names
  private_subnets      = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnets       = ["10.0.4.0/24", "10.0.5.0/24", "10.0.6.0/24"]
  #enable_nat_gateway   = true
  #single_nat_gateway   = true
  enable_dns_hostnames = true

  tags = {
    "kubernetes.io/cluster/${local.cluster_name}" = "shared"
  }

  public_subnet_tags = {
    "kubernetes.io/cluster/${local.cluster_name}" = "shared"
    "kubernetes.io/role/elb"                      = "1"
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/${local.cluster_name}" = "shared"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

locals {
  cluster_name = "my-eks-cluster"
}
data "aws_availability_zones" "available" {}

resource "aws_subnet" "my-subnet-public-1" {
    vpc_id = module.vpc.vpc_id 
    cidr_block = "10.0.7.0/24"
    map_public_ip_on_launch = "true" // makes public
    availability_zone = "eu-west-1a"

    tags = {
        Name = "my-subnet-public-1"
    }
}

resource "aws_subnet" "my-subnet-private-1" {
    vpc_id = module.vpc.vpc_id 
    cidr_block = "10.0.8.0/24"
    map_public_ip_on_launch = "false" 
    availability_zone = "eu-west-1a"
    tags = {
        Name = "my-subnet-private-1"
    }
} 