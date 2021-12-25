# EC2 Security group SSH
resource "aws_security_group" "vpc_ssh" {
  name        = "vpc_ssh"
  description = "Dev VPC SSH"
  #vpc_id      = aws_vpc.main.id by default used the default VPC

  ingress {
    description      = "Allow port 22"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    description      = "Allow all" 
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "vpc_ssh"
  }
}
# EC2 Security group Web
resource "aws_security_group" "vpc_web" {
  name        = "vpc_web"
  description = "Dev VPC Web"
  #vpc_id      = aws_vpc.main.id by default used the default VPC

  ingress {
    description      = "Allow port 80"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "Allow port 443"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    description      = "Allow all" 
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "vpc_web"
  }
}