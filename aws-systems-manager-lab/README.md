# AWS Systems Manager Lab

Este projeto demonstra, na prática, o uso do **AWS Systems Manager** para gerenciamento, automação e acesso seguro a instâncias EC2, sem a necessidade de conexão via SSH.

---

## Objetivo

Explorar os principais recursos do AWS Systems Manager para:

- Coletar inventário de instâncias
- Executar comandos remotamente
- Gerenciar configurações de aplicações
- Acessar instâncias com segurança

---

## Arquitetura

- 1x Amazon EC2
- AWS Systems Manager
  - Fleet Manager
  - Run Command
  - Parameter Store
  - Session Manager

---

## Tecnologias utilizadas

- AWS EC2
- AWS Systems Manager
- AWS CLI
- Apache
- PHP

---

## Aprendizados

Durante este laboratório, foi possível compreender:

- Como gerenciar instâncias de forma centralizada
- Execução remota de comandos sem SSH
- Uso de parâmetros para configuração dinâmica de aplicações
- Acesso seguro via navegador utilizando Session Manager

---

## Segurança

O uso do Systems Manager permite:

- Eliminar الحاجة de portas abertas (SSH)
- Controle de acesso via IAM
- Auditoria com AWS CloudTrail

---

## Conclusão

O AWS Systems Manager é uma ferramenta poderosa para administração de infraestrutura em larga escala, permitindo automação, segurança e praticidade no gerenciamento de recursos na nuvem.
