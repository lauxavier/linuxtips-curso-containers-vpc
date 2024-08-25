resource "aws_ssm_parameter" "vpc" {
  name  = format("/%s/vpc/vpc_id", var.project_name)
  type  = "String"
  value = aws_vpc.main.id
}

resource "aws_ssm_parameter" "private_1a" {
  name  = format("/%s/vpc/subnet_private_1a_id", var.project_name)
  type  = "String"
  value = aws_subnet.private_subnet_1a.id
}

resource "aws_ssm_parameter" "private_1b" {
  name  = format("/%s/vpc/subnet_private_1b_id", var.project_name)
  type  = "String"
  value = aws_subnet.private_subnet_1b.id
}

resource "aws_ssm_parameter" "private_1c" {
  name  = format("/%s/vpc/subnet_private_1c_id", var.project_name)
  type  = "String"
  value = aws_subnet.private_subnet_1c.id
}

resource "aws_ssm_parameter" "public_1a" {
  name  = format("/%s/vpc/subnet_public_1a_id", var.project_name)
  type  = "String"
  value = aws_subnet.public_subnet_1a.id
}

resource "aws_ssm_parameter" "public_1b" {
  name  = format("/%s/vpc/subnet_public_1b_id", var.project_name)
  type  = "String"
  value = aws_subnet.public_subnet_1b.id
}

resource "aws_ssm_parameter" "public_1c" {
  name  = format("/%s/vpc/subnet_public_1c_id", var.project_name)
  type  = "String"
  value = aws_subnet.public_subnet_1c.id
}

resource "aws_ssm_parameter" "database_1a" {
  name  = format("/%s/vpc/subnet_database_1a_id", var.project_name)
  type  = "String"
  value = aws_subnet.database_subnet_1a.id
}

resource "aws_ssm_parameter" "database_1b" {
  name  = format("/%s/vpc/subnet_database_1b_id", var.project_name)
  type  = "String"
  value = aws_subnet.database_subnet_1b.id
}

resource "aws_ssm_parameter" "database_1c" {
  name  = format("/%s/vpc/subnet_database_1c_id", var.project_name)
  type  = "String"
  value = aws_subnet.database_subnet_1c.id
}