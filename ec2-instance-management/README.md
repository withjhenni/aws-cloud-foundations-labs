# AWS EC2 – Gerenciamento e Ciclo de Vida de Instância

## Visão Geral

Este laboratório demonstra, na prática, o gerenciamento completo do ciclo de vida de uma instância Amazon EC2, incluindo provisionamento, configuração de segurança, monitoramento, redimensionamento, expansão de armazenamento e encerramento controlado.

O objetivo foi aplicar conceitos fundamentais de computação em nuvem, como elasticidade, escalabilidade vertical, segurança, monitoramento e proteção de recursos.

---

## Serviços Utilizados

- Amazon EC2  
- Amazon EBS  
- Security Groups  
- User Data (Script de inicialização)  
- Amazon CloudWatch (monitoramento básico)

---

## Arquitetura do Laboratório

- AMI: Amazon Linux 2023  
- Tipo de instância inicial: `t3.micro`  
- Redimensionamento posterior para: `t3.small`  
- Volume raiz: 8 GiB (expandido para 10 GiB)  
- Proteção contra encerramento ativada durante a implantação  
- Servidor Web configurado automaticamente via User Data  

---

## Etapas Realizadas

### 1️⃣ Provisionamento da Instância

- Criação da instância EC2 utilizando Amazon Linux 2023  
- Ativação da proteção contra encerramento  
- Deploy automático do Apache Web Server via User Data  
- Validação do status da instância (2/2 verificações concluídas)

### 2️⃣ Monitoramento

- Análise das verificações de status (System e Instance)  
- Consulta às métricas básicas na aba Monitoring  
- Utilização do recurso "Get Instance Screenshot" para inspeção do sistema

### 3️⃣ Configuração de Segurança

- Remoção das regras padrão de entrada  
- Liberação controlada da porta 80 (HTTP) no Security Group  
- Validação do acesso ao servidor via IPv4 público  

### 4️⃣ Escalabilidade e Armazenamento

- Parada segura da instância  
- Redimensionamento de `t3.micro` para `t3.small` (escalabilidade vertical)  
- Expansão do volume EBS de 8 GiB para 10 GiB  
- Reinicialização e validação do funcionamento

### 5️⃣ Teste de Proteção contra Encerramento

- Tentativa de exclusão da instância com proteção ativa  
- Validação do bloqueio  
- Desativação da proteção  
- Encerramento controlado do recurso

---

## Script User Data Utilizado

```bash
#!/bin/bash
yum -y install httpd
systemctl enable httpd
systemctl start httpd
echo '<html><h1>Hello From Your Web Server!</h1></html>' > /var/www/html/index.html
