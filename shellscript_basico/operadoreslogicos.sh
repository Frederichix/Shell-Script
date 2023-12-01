#!/bin/bash
#Estrutura Condicionais: SE, SENÃOSE, SENÃO

#OPERADORES LÓGICOS:
# ! 	DIFERENTE 
# -o	Ou (or)
# && 	e (and)

echo 'Digite um numero: '

read numero

if [ $numero -gt 0 ] && [ $numero -lt 10 ]; then
	echo 'x é maior que 0 e menor que 10'
fi

