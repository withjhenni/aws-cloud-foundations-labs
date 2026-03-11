# AWS IAM & CLI Lab

## Objetivo

Este laboratório teve como objetivo praticar a utilização da AWS CLI dentro de uma instância EC2 e compreender, na prática, como funcionam as políticas do IAM (Identity and Access Management).

A proposta foi realizar toda a configuração via linha de comando, incluindo a instalação da AWS CLI, configuração de credenciais e extração de uma policy existente na conta AWS em formato JSON.

---

## Serviços Utilizados

- Amazon EC2 (Red Hat Linux)
- AWS CLI v2
- AWS IAM

---

## Etapas Realizadas

1. Conexão via SSH na instância EC2
2. Instalação da AWS CLI
3. Configuração de credenciais com `aws configure`
4. Listagem de policies locais
5. Identificação do ARN da policy
6. Verificação da versão padrão da policy
7. Extração da policy em formato JSON

---

## Comandos Utilizados

### Instalação da AWS CLI

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip -u awscliv2.zip
sudo ./aws/install
aws --version
### Configuração da CLI
aws configure

### Listar policies locais
aws iam list-policies --scope Local

### Verificar versão da policy
