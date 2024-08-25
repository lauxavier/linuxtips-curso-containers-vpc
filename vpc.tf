resource "aws_vpc" "main" {
  #65.534 IPs
  cidr_block = "10.0.0.0/16"

  #para criar recursos nativos de gestão de DNS da VPC
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = var.project_name
  }
}