#!/bin/bash
#Crie um script que liste todos os arquivos de um diretório específico. O diretório deve ser informado pelo usuário.

ler_Diretorio() {
	read -p "Digite o diretório: " diretorio
	for todosArquivos in $diretorio
	do
		ls -a $diretorio
	done
}

ler_Diretorio
