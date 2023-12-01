#!/bin/bash
#Desenvolva um script que leia um arquivo de texto e conte o número de linhas, palavras e caracteres no arquivo.

caminho=$(cd ~/Desktop/Alura/ShellScript/shellscript_exercicios/)

ler_Arquivo() {
	read -p "Digite o nome do arquivo: " arquivo
		for validador in $arquivo
		do
			ls $caminho $validador
				if [ $? -eq 0 ]; then
					contador $validador
				else
					echo "Arquivo não encontrado"
				fi
		done
}

contador() {
	linhas=$(wc -l $1)
	palavras=$(wc -w $1)
	caracteres=$(wc -m $1)
	echo "O número de linhas é: $linhas"
	echo "O número de palavras é: $palavras"
	echo "O número de caracteres é: $caracteres"
}

ler_Arquivo

