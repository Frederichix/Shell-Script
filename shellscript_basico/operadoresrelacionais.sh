#!/bin/bash

#OPERADORES RELACIONAIS:
# -eq	IGUAL
# -ne	DIFERENTE
# -gt 	MAIOR QUE
# -lt 	MENOR QUE
# -ge 	MAIOR OU IGUAL QUE
# -le	MENOR OU IGUAL QUE

echo 'Digite o primeiro número (x): '
read x

echo 'Digite o segundo número (y): '
read y

#Verifica se x é igual a y
if [ $x -eq $y ]; then
echo 'Os numeros fornecidos são iguais'
fi

if [ $x -ne $y ]; then
echo 'O números fornecidos são diferentes'
fi

if [ $x -gt $y ]; then
echo 'O primeiro número fornecido é maior que o segundo'
fi

if [ $x -lt $y ]; then
echo 'O primeiro número fornecido é menor que o segundo'
fi

if [ $x -ge $y ]; then
echo 'O primeiro número fornecido é maior ou igual o segundo'
fi

if [ $x -le $y ]; then
echo 'O primeiro número fornecido é menor ou igual ao segundo'
fi

