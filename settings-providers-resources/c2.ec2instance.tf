# Resource Block

resource "aws_instance" "myec2" {
    ami           = "ami-06bfd6343550d4a29"
    instance_type = "t3.micro"
    tags          = {
        "func":"test"
    }
    user_data = file("${path.module}/app1-install.sh")
}