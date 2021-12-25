# Input variables
# AWS region

variable "aws_region" {
    description = "List of the variables"
    type = string
    default = "eu-north-1"
}

# AWS EC2 Instance Type

variable "instance_type" {
    description = "EC2 instance type"
    type = string
    default = "t3.micro"
}

# AWS EC2 Instance key pair
variable "instance_keypair" {
    description = "AWS EC2 key pair"
    type = string
    default = "terraform-key"
  
}