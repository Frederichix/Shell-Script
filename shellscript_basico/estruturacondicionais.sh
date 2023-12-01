#!/bin/bash
#ESTRUTURA CONDICIONAIS

# if [ condiçao ]; then
#	echo ...
# elif [ outra condicao ]; then
#	echo ...
# else
#	echo ...
# fi

x=1

if [ $x = 0 ]; then
	echo "x igual a zero"
elif [ $x = 1 ]; then
	echo "x igual a 1"
else
	echo "Outro numero"
fi

