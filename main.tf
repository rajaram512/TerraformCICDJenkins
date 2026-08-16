terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.59.0"
    }
  }
}

provider "aws" {
  region  = "ap-south-1"
  //profile = "terraform"
}

resource "aws_instance" "server" {
ami= "ami-0011550b539717e2a"
instance_type = "t3.micro"
availability_zone = "ap-south-1a" 
key_name = "AmazonWebservices"



tags = {
    Name = "Terraform_CICD1"
}
}