# Terraform AWS Setup Guide

## Pré-requisitos

![Terraform-1.12.1](https://img.shields.io/badge/terraform-1.12.1-blueviolet?style=flat-square)

1. **Instalar Terraform**
   - Faça o download do Terraform em: https://www.terraform.io/downloads.html
   - Adicione o executável do Terraform ao PATH do sistema
   - Verifique a instalação: `terraform -version`

2. **Instalar tfenv (Gerenciador de versões do Terraform)**
   - Windows (usando Git Bash ou Chocolatey):
     ```bash
     # Usando Chocolatey
     choco install tfenv

     # OU Clone o repositório manualmente
     git clone https://github.com/tfutils/tfenv.git ~/.tfenv
     ```
   
   - Linux/Mac:
     ```bash
     # Usando Homebrew (Mac)
     brew install tfenv

     # Usando Git (Linux/Mac)
     git clone https://github.com/tfutils/tfenv.git ~/.tfenv
     echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bash_profile
     ```

   Comandos básicos do tfenv:
   ```bash
   # Listar versões disponíveis do Terraform
   tfenv list-remote

   # Instalar uma versão específica
   tfenv install 1.12.1

   # Usar uma versão específica
   tfenv use 1.12.1

   # Listar versões instaladas
   tfenv list
   ```

3. **Instalar AWS CLI**
   - Faça o download do AWS CLI em: https://aws.amazon.com/cli/
   - Instale o AWS CLI
   - Verifique a instalação: `aws --version`

4. **Configurar Credenciais AWS**
   - Crie uma conta AWS se ainda não tiver
   - Crie um usuário IAM com permissões adequadas
   - Configure o AWS CLI usando um dos métodos abaixo:
     ```bash
     # Opção 1: Configurar perfil default
     aws configure

     # Opção 2: Configurar perfil específico
     aws configure --profile terraform-dev
     ```
   - As credenciais serão salvas em:
     - Windows: `%UserProfile%\.aws\credentials`
     - Linux/Mac: `~/.aws/credentials`

## Estrutura do Projeto
```
.
├── terraform/
│   └── 01-terraform-basico/
│       └── 01-primeiro-script/
│           └── main.tf
└── README.md
```

## Comandos Básicos do Terraform

1. **Inicializar o Terraform**
   ```bash
   terraform init
   ```

2. **Verificar o plano de execução**
   ```bash
   terraform plan
   ```

3. **Aplicar as mudanças**
   ```bash
   terraform apply
   ```

4. **Destruir a infraestrutura**
   ```bash
   terraform destroy
   ```

## Versões Utilizadas

- Terraform: 1.12.1
- Provider AWS: 3.23.0
- Região AWS: us-east-1 (N. Virginia)

## Recursos Criados

O projeto atual cria:
- Um bucket S3 privado com tags personalizadas

## Observações Importantes

1. Certifique-se de que as credenciais AWS estejam configuradas corretamente
2. Verifique se o perfil AWS configurado no `main.tf` corresponde ao seu perfil configurado
3. Sempre revise o plano do Terraform antes de aplicar as mudanças
4. Lembre-se de destruir os recursos quando não estiverem mais em uso para evitar custos desnecessários

## Troubleshooting

Se encontrar problemas:
1. Verifique se as credenciais AWS estão corretas
2. Confirme se o perfil AWS está configurado corretamente
3. Certifique-se de que a região AWS está correta
4. Verifique as permissões do usuário IAM