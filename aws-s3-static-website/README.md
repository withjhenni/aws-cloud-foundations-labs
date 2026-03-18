# Static Website Hosting com Amazon S3

## Objetivo

Este laboratório teve como objetivo implementar um site estático utilizando o Amazon S3, com configuração realizada via AWS CLI.

A proposta foi entender, na prática, como disponibilizar um site público na nuvem, além de automatizar o processo de atualização dos arquivos utilizando scripts.

---

## Serviços Utilizados

- Amazon S3
- AWS CLI
- Amazon EC2
- AWS IAM

---

## ⚙️ Etapas Realizadas

- Configuração da AWS CLI na instância EC2  
- Criação de um bucket S3  
- Criação de usuário IAM com permissão de acesso ao S3  
- Ajuste de permissões públicas no bucket  
- Upload dos arquivos do site  
- Ativação da hospedagem de site estático  
- Criação de script para automação de deploy  

---

## Comandos Utilizados

### Configuração da AWS CLI

```bash
aws configure

### Criação do bucket S3

```bash
aws s3api create-bucket \
--bucket <nome-do-bucket> \
--region us-west-2 \
--create-bucket-configuration LocationConstraint=us-west-2

### Criação do usuário IAM

```bash
aws iam create-user --user-name awsS3user
aws iam create-login-profile \
--user-name awsS3userjhe \
--password Training123!

### Listar policies

```bash
aws iam list-policies --query "Policies[?contains(PolicyName,'S3')]"
Associar policy ao usuário
aws iam attach-user-policy \
--policy-arn arn:aws:iam::aws:policy/<policy> \
--user-name awsS3userjhe

### Configurar site estático

```bash
aws s3 website s3://<bucket>/ --index-document index.html

### Upload dos arquivos

```bash
aws s3 cp /home/ec2-user/sysops-activity-files/static-website/ \
s3://<bucket>/ \
--recursive \
--acl public-read

### Listar arquivos no bucket

```bash
aws s3 ls s3://<bucket>

## Automação de Deploy

Script criado para atualizar o site automaticamente:

```bash
#!/bin/bash
aws s3 cp /home/ec2-user/sysops-activity-files/static-website/ \
s3://<bucket>/ \
--recursive \
--acl public-read