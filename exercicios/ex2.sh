#!/bin/bash

read -p "Digite o nome do arquivo: " arquivo
back_arq=$arquivo"_backup_$(date +%Y%m%d_%H%M%S)"

if [ -f $arquivo ]; then
	tar -cvf "$back_arq" "$arquivo"
	echo "Arquivo de backup: $back_arq criado com sucesso!"
	mv $back_arq /tmp/
	ls -l /tmp/$back_arq
fi