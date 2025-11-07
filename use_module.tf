terraform {
  backend "s3" {
    bucket = "vijay-roche-terraform-bucket"
    key    = "dev/vijayp/terraform.tfstate"
    region = "ap-southeast-2"
    encrypt = true
    dynamodb_table = "vijay-roche-table1"
  }
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.19.0"
    }
  }

    }
provider "aws" {
  # Configuration options
  # region location info 
  region = "ap-southeast-2"

}

module "my-vijay-module-ec2" {
    source = "./modules/ec2"
    vijaymiid = "ami-0a25a306450a2cba3"
    vm-name = "vijay-vmby-module-day4"
    vm-size = "t2.nano"
    ec2-key-name = "ashukeyby-modeday4"
    private-key-algo = "RSA"
    key-size = 4096
    my-vpc-id = "vpc-02d56e9aa1ce2f114"
    my-sec-group-name = "ashutoshh-day3-firewall-rules"
    novm = 2

}

    