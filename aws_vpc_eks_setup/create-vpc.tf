
#############################################################################
# VARIABLES
#############################################################################

variable "region_1" {
  type    = string
  default = "us-east-1"
}

 
variable "vpc_cidr_range_east" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnets_east" {
  type    = list(string)
  default = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "private_subnets_east" {
 type = list(string)
 default = ["10.0.1.0/24", "10.0.2.0/24"]
} 
  
 
#############################################################################
# PROVIDERS
#############################################################################

provider "aws" {
  region  = var.region_1
  alias = "east"
}

#############################################################################
# DATA SOURCES
#############################################################################

data "aws_availability_zones" "azs_east" {
    provider = aws.east
}

#############################################################################
# RESOURCES
#############################################################################  

module "vpc_east" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.2.0"

  name = "planA-dev-vpc-east"
  cidr = var.vpc_cidr_range_east

  azs            = slice(data.aws_availability_zones.azs_east.names, 0, 2)
   # Public subnets
  public_subnets = var.public_subnets_east

   # Private subnets
  private_subnets = var.private_subnets_east

 
  providers = {
      aws = aws.east
  }

  tags = {
    Environment = "planA-dev-test"
    Region = "east"
    Team        = "Dev"
  }

}
 



