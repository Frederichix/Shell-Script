#!/bin/bash

#OPERADORES ARTIMETICOS
# + 	Adição			$(expr 10 + 10) #20
# -	Subtração		$(expr 120 - 20) #100
# *	Multiplicação		$(expr 10 * 7) #70
# /	Divisão			$(expr 10 / 2) #5
# %	Módulo			$(expr 11 % 2) #1
# =	Igualdade		$([ $x = 10 ] #
# !=	Diferente		#$( $x != 2] )

x=10
y=20

soma=$(expr $x + $y )
echo "A soma de $x + $y é igual a $soma"
