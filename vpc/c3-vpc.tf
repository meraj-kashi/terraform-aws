# Create VPC 
  module "vpc" {
    source  = "terraform-aws-modules/vpc/aws"
    version = "3.11.0"
    # insert the 21 required variables here
    name = "vpc-dev"
    cidr = "10.0.0.0/16" # 10.0.0.0/8 is reserved for EC2-Classic
    azs                 = ["eu-north-1a","eu-north-1b"]
    private_subnets     = ["10.0.1.0/24","10.0.2.0/24"]
    enable_nat_gateway = true
    single_nat_gateway = true # for cost saving

    public_subnets      = ["10.0.101.0/24","10.0.102.0/24"]


    # Database subnet
    database_subnets    = ["10.0.151.0/24","10.0.152.0/24"]
    create_database_subnet_group = true
    create_database_subnet_route_table = true
    #create_database_internet_gateway_route = false
    #create_database_nat_gateway_route = true

    # DNS parameter
    enable_dns_hostnames = true
    enable_dns_support = true

    public_subnet_tags = {
        Type = "public-subnets"
    }

    private_subnet_tags = {
        Type = "private-subnets"
    }
    
    database_subnet_tags = {
        Type = "database-subnets"
    }

    tags = {
        Owner = "Meraj"
        Env = "Dev"
    }
}
 