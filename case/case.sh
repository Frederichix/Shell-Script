#!/bin/bash

echo "(C) - Compactar"
echo "(D) - Descompactar"
echo "(X) - Sair"

read -p "Opção: " option

case "$option" in
    "C")
        while true
        do
            read -p "Digite o nome do arquivo a ser compactado: " arquivo
            timestamp=$arquivo"_bkp_$(date +%Y%m%d_%H%M%S)".tar.gz
            
            if [ -f "$arquivo" ]; then
                tar -czf $timestamp $arquivo
                echo "Arquivo compactado com sucesso!"
                ls -lah $timestamp
                break
            elif [ -d "$arquivo" ]; then
                echo "A compactação espera um arquivo, e não um diretório" 
            fi
        done
        ;;
    "D")
        while true
        do
            read -p "Digite o nome do arquivo para descompactar: " descompactar
            if [ -f "$descompactar" ]; then
                tar -xvzf $descompactar -C ../descompactado/
                echo "Arquivo descompactado com sucesso!"
                ls -la ../descompactado/
                break
            fi
        done
    ;;
    "X")
        echo "Bye!"
        exit
    ;;
esac