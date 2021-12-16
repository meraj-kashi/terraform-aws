# Terraform Settings Block
terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            #version = 
        }
    }
}

# Provider Block
provider "aws" {
    profile = "default"
    region = "eu-north-1"
}

# Resource Block
resource "aws_instance" "ec2demo" {
    ami = "ami-06bfd6343550d4a29"
    instance_type = "t3.micro"
}