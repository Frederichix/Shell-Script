#!/bin/bash

# 3) Crie um script que solicite ao usuário o nome de um diretório e, em seguida, o crie.

read -p "Digite o nome do diretório: " diretorio
if [ ! -d "$diretorio" ]; then
    mkdir "$diretorio"
    echo "Diretório: $diretorio criado com sucesso!"
    ls -la "$diretorio"
fi