# Variable
variable "aws_region" {
  description = "aws region"
  type = string
  default = "eu-north-1"
  }  
# Datasource
data "aws_ec2_instance_type_offering" "my_ins_type1" {
    for_each = toset(["eu-north-1a","eu-north-1b"])
    filter {
      name = "instance-type"
      values = ["t3.micro"]
    }
    filter {
      name = "location"
      values = [each.key]
    }
    location_type = "availability-zone"
}

# Output
output "output_v1_1" {
    description = "output of instace type offering"
    value = toset([for t in data.aws_ec2_instance_type_offering.my_ins_type1: t.instance_type ] )
  
}