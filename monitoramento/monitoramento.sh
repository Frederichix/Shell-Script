#!/bin/bash

# Verifica a execução do nginx

if pgrep nginx &> /dev/null
then
    echo "O NGINX está em operação. Data e Hora: $(date +"%Y-%m-%d %H:%M:%S")"
else
    echo "O NGINX não está em operação."
fi