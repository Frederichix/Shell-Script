#!/bin/bash

# 4) Escreva um script que aceite um nome de arquivo como argumento e verifique se o arquivo existe

echo "Verifica a existência de um arquivo."
read -p "Digite o nome do arquivo: " arquivo

if [ -f "$arquivo" ]; then
    echo "Arquivo: $arquivo encontrado!"
elif [ ! -f "$arquivo" ]; then
    echo "Arquivo: $arquivo não encontrado."
fi