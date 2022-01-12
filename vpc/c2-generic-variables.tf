# genral Variables
variable "business_devision"{
    description = " business devision"
    type = string
    default = "dev"
}


# AWS Region
variable "aws_region" {
    description = "Region in AWS to use"
    type = string
    default = "eu-north-1"
  
}