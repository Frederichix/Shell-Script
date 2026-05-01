#!/bin/bash

echo "1) Compactar"
echo "2) Descompactar"
echo "X) Sair"

read -p "Opção: " option

case $option in
    1)
        read -p "Digite o nome do arquivo: " arquivo
        bkp_arq=$arquivo"_backup_$(date +%Y%m%_d%H%M%S).tar.gz"
            for arquivos in $arquivo; do
                if [ -f $arquivos ]; then
                    tar -czf $bkp_arq $arquivos
                    echo "Backup do arquivo: $arquivos criado com sucesso!"
                else
                    echo "Arquivo não encontrado: $arquivos"
                fi
            done
    ;;
esac