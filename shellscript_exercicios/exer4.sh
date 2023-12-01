#!/bin/bash
#Elabore um script que aceite dois números como entrada do usuário e realize as quatro operações básicas (adição, subtração, multiplicação e divisão) com esses números.

numeros() {
	read -p "Digite o primeiro número: " numero1
	read -p "Digite o segundo numero: " numero2
}

operacoes() {
	local soma=$(expr $numero1 + $numero2)
	local subt=$(expr $numero1 - $numero2)
	local mult=$(expr $numero1 \* $numero2)
	local div=$(expr $numero1 / $numero2)

	echo "Soma: $soma"
	echo "Subtração: $subt"
	echo "Multiplicação: $mult"
	echo "Divisão: $div"
}

numeros
operacoes
