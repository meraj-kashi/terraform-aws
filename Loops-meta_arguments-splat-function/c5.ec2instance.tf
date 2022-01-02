# Availability Zones datasource
data "aws_availability_zones" "my_azs" {
  filter {
    name   = "opt-in-status"
    values = ["opt-in-not-required"]
  }
}

# EC2 Instance
resource "aws_instance" "myec2vm" {
    ami                    = data.aws_ami.amz_linux2.id
    #instance_type          = var.instance_type
    instance_type = var.instance_type_list[0]  #for list
    #instance_type = var.instance_type_map["dev"] for map
    user_data              = file("${path.module}/app1-install.sh")
    key_name               = var.instance_keypair
    vpc_security_group_ids = [ aws_security_group.vpc_ssh.id , aws_security_group.vpc_web.id ]
    for_each = toset(data.aws_availability_zones.my_azs.names)
    availability_zone = each.key
    tags                   = {
        "Name" = "EC2 Demo -${each.value}"
    }
  
}