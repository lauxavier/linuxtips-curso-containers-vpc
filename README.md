<!-- BEGIN_TF_DOCS -->
# Aula 01 - Arquitetura de VPCs

## Arquitetura Base com 3 Camadas por Subnet (Apresentação, Lógica e Dados)

![Arquitetura Camadas](/docs/vpc-camadas.drawio.png)

## Arquitetura Inicial de Conectividade

![Arquitetura Inicial](/docs/vpc-arquitetura.drawio.png)

## Planejamento de Tamanho das Subnets

![Planejamento](/docs/vpc-planejamento.drawio.png)

### Endereços IP disponíveis para hosts

> /16 VPC <br><br>
  10.0.0.0/16 ===> 10.0.0.4 a 10.0.255.254

> /24 Subnets públicas <br><br>
  10.0.48.0/24 ===> 10.0.48.4 a 10.0.48.254 <br>
  10.0.49.0/24 ===> 10.0.49.4 a 10.0.49.254 <br>
  10.0.50.0/24 ===> 10.0.50.4 a 10.0.50.254

> /20 Subnets privadas reservadas para as aplicações (computing) <br><br>
  10.0.0.0/20  ===> 10.0.0.4 a 10.0.15.254 <br>
  10.0.16.0/20 ===> 10.0.16.4 a 10.0.31.254 <br>
  10.0.32.0/20 ===> 10.0.32.4 a 10.0.47.254

> /24 Subnets isoladas reservadas para os bancos de dados (database) <br><br>
  10.0.51.0/24 ===> 10.0.51.4 a 10.0.51.254 <br>
  10.0.52.0/24 ===> 10.0.52.4 a 10.0.52.254 <br>
  10.0.53.0/24 ===> 10.0.53.4 a 10.0.53.254

Para cada bloco de IP a AWS sempre reserva 5 IPs para uso interno de gerenciamento.

1. Endereço de rede (ex. 10.0.16.0): O primeiro IP de cada bloco é usado para identificar a rede.
2. Primeiro endereço utilizável (ex. 10.0.16.1): Reservado pela AWS para utilização do VPC local router para comunicação interna.
3. Segundo endereço utilizável (ex. 10.0.16.2): Reservado pela AWS para resolução de DNS.
4. Terceiro endereço utilizável (ex. 10.0.16.3): Reservado pela AWS para o uso interno da infraestrutura (uso futuro).
5. Endereço de broadcast (ex. 10.0.31.255): O último IP de cada bloco é usado para enviar mensagens a todos os hosts na subnet.

[AWS re:Post Networking 101 - Part 2](https://repost.aws/articles/ARgs1iWM-ASlGSktYepaY68Q/networking-101-part-2)

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.64.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_eip.vpc_eip_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_eip.vpc_eip_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_eip.vpc_eip_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.gw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.nat_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_nat_gateway.nat_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_nat_gateway.nat_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route.private_access_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.private_access_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.private_access_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route.public_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route) | resource |
| [aws_route_table.private_internet_access_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.private_internet_access_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.private_internet_access_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.public_internet_access](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.private_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.private_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.private_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.public_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_ssm_parameter.database_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.database_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.database_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.private_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.private_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.private_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.public_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.public_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.public_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_ssm_parameter.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/ssm_parameter) | resource |
| [aws_subnet.database_subnet_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.database_subnet_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.database_subnet_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private_subnet_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private_subnet_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.private_subnet_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet_1a](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet_1b](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.public_subnet_1c](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_name"></a> [project\_name](#input\_project\_name) | n/a | `any` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | n/a | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_ssm_subnet_database_1a_id"></a> [ssm\_subnet\_database\_1a\_id](#output\_ssm\_subnet\_database\_1a\_id) | n/a |
| <a name="output_ssm_subnet_database_1b_id"></a> [ssm\_subnet\_database\_1b\_id](#output\_ssm\_subnet\_database\_1b\_id) | n/a |
| <a name="output_ssm_subnet_database_1c_id"></a> [ssm\_subnet\_database\_1c\_id](#output\_ssm\_subnet\_database\_1c\_id) | n/a |
| <a name="output_ssm_subnet_private_1a_id"></a> [ssm\_subnet\_private\_1a\_id](#output\_ssm\_subnet\_private\_1a\_id) | n/a |
| <a name="output_ssm_subnet_private_1b_id"></a> [ssm\_subnet\_private\_1b\_id](#output\_ssm\_subnet\_private\_1b\_id) | n/a |
| <a name="output_ssm_subnet_private_1c_id"></a> [ssm\_subnet\_private\_1c\_id](#output\_ssm\_subnet\_private\_1c\_id) | n/a |
| <a name="output_ssm_subnet_public_1a_id"></a> [ssm\_subnet\_public\_1a\_id](#output\_ssm\_subnet\_public\_1a\_id) | n/a |
| <a name="output_ssm_subnet_public_1b_id"></a> [ssm\_subnet\_public\_1b\_id](#output\_ssm\_subnet\_public\_1b\_id) | n/a |
| <a name="output_ssm_subnet_public_1c_id"></a> [ssm\_subnet\_public\_1c\_id](#output\_ssm\_subnet\_public\_1c\_id) | n/a |
| <a name="output_ssm_vpc_id"></a> [ssm\_vpc\_id](#output\_ssm\_vpc\_id) | n/a |
<!-- END_TF_DOCS -->