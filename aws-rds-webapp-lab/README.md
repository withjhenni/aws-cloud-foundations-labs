# Aplicação web integrada com banco de dados gerenciado, com alta disponibilidade e replicação automática entre zonas.

## Descrição

Este laboratório demonstra a criação de um banco de dados relacional utilizando o Amazon RDS e sua integração com uma aplicação web.

---

## Objetivo

- Criar uma instância RDS MySQL Multi-AZ
- Configurar acesso via Security Groups
- Conectar uma aplicação web ao banco
- Realizar operações no banco (CRUD)

---

## Arquitetura

- Servidor EC2 (Web)
- Banco de dados RDS (Multi-AZ)
- VPC com subnets privadas
- Security Groups controlando acesso

---

## Etapas realizadas

- Criação do Security Group para o banco (porta 3306)
- Criação do DB Subnet Group
- Criação do RDS MySQL (Multi-AZ)
- Configuração de conectividade com EC2
- Integração com aplicação web
- Testes de inserção e leitura de dados