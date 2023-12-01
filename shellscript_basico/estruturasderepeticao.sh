#!/bin/bash
#ESTRUTURAS DE REPETIÇÃO: for, while

#FOR
for ((i=1; i<5; i++))
do
	echo $i
done

#Podemos também, pegar os argumentos passados
for i in $@
do
	echo $i
done


#WHILE

echo "Menu de seleção:"
echo "1. Exibir mensagem de saudação"
echo "2. Exibir dia e hora"
echo "3. Sair"

while read -p "Qual opção você deseja? " entrada
do
	if [ $entrada -eq 1 ]; then
		echo "Bem vindo(a)!"
		break
	elif [ $entrada -eq 2 ]; then
		date +%D,%H:%M
		break
	else
		echo "Até mais!"
	fi
done

