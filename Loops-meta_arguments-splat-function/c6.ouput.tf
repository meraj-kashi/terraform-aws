# Terraform Output values

# Output latest generalized splat operator
output "latest_splat_instance_publicdns" {
    description = "Generelized latest splat operator"
    value = aws_instance.myec2vm[*].public_dns
  
}

# Output latest generalized splat operator
output "latest_splat_instance_publicip" {
    description = "Generelized latest splat operator"
    value = aws_instance.myec2vm[*].public_ip
  
}