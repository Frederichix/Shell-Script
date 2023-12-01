#!/bin/bash
#Desenvolva um script que peça ao usuário para digitar um nome de arquivo e, em seguida, verifique se o arquivo existe. Se existir, exiba uma mensagem informando que o arquivo existe; caso contrário, informe que o arquivo não foi encontrado.

cd ~/Desktop/Alura/ShellScript/shellscript_exercicios

entrada() {
	read -p "Digite o nome do arquivo: " arquivo
}

verificacao() {
	for procura in $arquivo
	do
		find $procura
			if [ $? -eq 0 ]; then
				echo "Arquivo encontrado!"
			else
				echo "Arquivo não encontrado!"
			fi
	done
}

entrada
verificacao 2>/dev/null
