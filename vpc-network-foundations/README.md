# Projeto: Deploy de Servidor Web em VPC personalizada


## Objetivo

Criar uma arquitetura de rede na AWS com sub-redes públicas e privadas e disponibilizar um servidor web.

---

## Serviços utilizados:

* Amazon VPC
* Amazon EC2
* Internet Gateway
* NAT Gateway
* Security Groups

---

## Arquitetura implementada:
* VPC (10.0.0.0/16)
* 2 sub-redes públicas
* 2 sub-redes privadas
* Tabelas de rotas separadas
* EC2 com Amazon Linux 2

## Apache configurado via User Data:
```bash
#!/bin/bash
#Install Apache Web Server and PHP
yum install -y httpd mysql php
#Download Lab files
wget https://aws-tc-largeobjects.s3.us-west-2.amazonaws.com/CUR-TF-100-RESTRT-1/267-lab-NF-build-vpc-web-server/s3/lab-app.zip
unzip lab-app.zip -d /var/www/html/
#Turn on web server
chkconfig httpd on
service httpd start


