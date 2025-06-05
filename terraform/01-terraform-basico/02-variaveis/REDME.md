# Precedência de Definição de Variável


Os mecanismos acima para definir variáveis ​​podem ser usados ​​em conjunto em qualquer combinação. Se a mesma variável receber vários valores, o Terraform usará o último valor encontrado, substituindo quaisquer valores anteriores. Observe que a mesma variável não pode receber vários valores dentro de uma única fonte.

### O Terraform carrega variáveis ​​na seguinte ordem, com as fontes posteriores tendo precedência sobre as anteriores:

1. ** Variáveis ​​de ambiente

    - O terraform.tfvarsarquivo, se presente.
    - O terraform.tfvars.jsonarquivo, se presente.
    - Qualquer arquivo *.auto.tfvarsou *.auto.tfvars.json, processado na ordem lexical de seus nomes de arquivo.
    - Quaisquer opções -vare -var-filena linha de comando, na ordem em que são fornecidas. (Isso inclui variáveis ​​definidas por um espaço de trabalho do HCP Terraform.)
