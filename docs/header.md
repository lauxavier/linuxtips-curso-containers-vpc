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