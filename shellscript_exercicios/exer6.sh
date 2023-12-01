#!/bin/bash
#Crie um script que peça ao usuário para digitar um número e, em seguida, exiba a tabuada desse número.

entrada() {
	read -p "Digite um número da tabuada: " numero
	if [ $numero -gt 0 ] && [ $numero -lt 11 ]; then
		tabuada $numero
	else
		echo "O numero digitado está fora da faixa"
	fi
}

tabuada() {
	for ((i=1; i<=10; i++))
	do
		resultado=$(($1 * $i))
		echo "$1 x $i = $resultado"
	done
}

entrada
