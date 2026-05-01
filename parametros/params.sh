#!/bin/bash

#Recebem dados de entrada (argumentos) para serem processados
# command param1, param2
#           arg    arg

#Essa passagem de parâmtros, é realizadas por variáveis especiais 
#conhecidas como Variáveis de posição

#Variáveis de posição:
# $1 - Argumento 1 | $2 - Argumento 2 | $3 - Argumento 3...
# $@ - Todos os argumentos posicionais
# $# - Quantidade total de argumentos

for arquivo in "$@"; do
    if [ ! -f "$arquivo" ]; then
    echo "Arquivo: $arquivo não encontrado"
    else
        echo "Arquivo: $arquivo encontrado!"
    fi
done
