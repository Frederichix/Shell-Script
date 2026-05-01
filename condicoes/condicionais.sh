#!/bin/bash

# Operadores de Comparação

#Numéricos
if [ 1 -eq 1 ]; then # -eq = Equal/Igual 
    echo "Os números digitados são iguais"
fi

if [ 1 -ne 2 ]; then # -ne = Not Equal/Diferente 
    echo "Os números digitados são diferentes"
fi

if [ 8 -lt 9 ]; then # -lt = Less Than/Menor que
    echo "O número digitado é menor do que o segundo"
fi

if [ 10 -le 10 ]; then # -le = Less Equal/Menor ou Igual
    echo "O número digitado é menor ou igual"
fi

if [ 10 -gt 9 ]; then # -gt Greater Than/Maior que
    echo "O número digitado é maior do que o segundo"
fi

if [ 10 -ge 10 ]; then # -ge Greater Equal/Maior ou Igual
    echo "O número digitado é maior ou igual do que o segundo"
fi

echo "-------------------------------------------------------"

if [ -e "/" ]; then # Arquivo ou Diretório existe
    echo "O diretório ou arquivo EXISTE."
fi

if [ -f ~/devops/shell_script/condicoes/condicionais.sh ]; then # Arquivo Existe
    echo "O arquivo em questão EXISTE."
fi

if [ -d "/" ]; then # Diretório Existe
    echo "O diretório raiz EXISTE".
fi