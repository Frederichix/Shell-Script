#!/bin/bash

#Elabore um script que copie todos os arquivos com uma determinada extensão de um diretório para outro. As extensões e os diretórios devem ser fornecidos pelo usuário.

entrada() {
	read -p "Digite a extensão no qual deseja copiar: " extensao
	read -p "Digite o diretório no qual deseja colar: " diretorio
		for arquivos in *.$extensao
		do
			if  [ $? -eq 0 ]; then
				for Diretorio in $diretorio
				do
					if [ $? -eq 0 ]; then
						processamento $arquivos $Diretorio
					else
						echo "Diretório não encontrado!"
					fi
				done
			else
				echo "Arquivo não encontrado"
			fi
		done
}

processamento() {
	cp -a $1 -t $2
		if [ $? -eq 0 ]; then
			echo "Arquivos com a extensão: $1, copiados com sucesso para o diretório: $2"
		else
			echo "Erro na conversão dos arquivos, verificar logs de erros"
		fi
}

entrada
