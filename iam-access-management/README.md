# Gestão de Acessos com AWS IAM

## Sobre o projeto

Este projeto demonstra na prática como funciona o controle de acesso na AWS utilizando o serviço AWS Identity and Access Management (IAM).

O IAM é responsável por definir **quem pode acessar quais recursos e o que pode fazer dentro do ambiente Cloud**.

---

## Objetivo

Simular um cenário corporativo onde diferentes usuários possuem permissões específicas de acordo com sua função.

---

## O que foi implementado

- Criação e aplicação de política de senha em nível de conta
- Análise de usuários e grupos pré-configurados
- Estudo de políticas gerenciadas (AWS Managed Policies)
- Análise de política inline personalizada
- Associação de usuários a grupos com permissões específicas
- Teste prático de controle de acesso via login individual

---

## Cenário aplicado

| Usuário  | Grupo        | Permissões |
|-----------|-------------|------------|
| user-1    | S3-Support  | Leitura no Amazon S3 |
| user-2    | EC2-Support | Leitura no Amazon EC2 |
| user-3    | EC2-Admin   | Visualizar, iniciar e parar instâncias |

---

## Conceitos aplicados

- Princípio do menor privilégio
- Controle de acesso baseado em função (RBAC)
- Políticas gerenciadas vs políticas inline
- Segurança de identidade em ambiente Cloud
- 

