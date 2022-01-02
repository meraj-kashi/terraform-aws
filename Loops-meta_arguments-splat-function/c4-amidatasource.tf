# Find the latest available AMI that is tagged with Component = web
data "aws_ami" "amz_linux2" {
  most_recent = true  
  owners = ["amazon"]
  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-*"]
  }
  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }
    filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
    filter {
    name   = "architecture"
    values = ["x86_64"]
  }

}