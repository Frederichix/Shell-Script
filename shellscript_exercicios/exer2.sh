#!/bin/bash
#Escreva um script que verifique se um número é positivo, negativo ou zero. Peça para o usuário digitar um número e exiba a mensagem apropriada.

nome() {
	clear
	read -p "Digite um número: " numero
}

condicao() {
	if [ $numero -gt 0 ]; then
		echo "O número digitado: $numero, é POSITIVO"
	elif [ $numero -lt 0 ]; then
		echo "O numero digitado: $numero, é NEGATIVO"
	else
		echo "O número digitado: $numero, é ZERO"
fi
}

nome
condicao
