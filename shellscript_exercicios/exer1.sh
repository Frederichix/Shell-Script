#!/bin/bash
#Crie um script que peça ao usuário seu nome e o cumprimente.

nome_cumprimento() {
	read -p "Digite seu nome: " nome
	echo "Olá $nome, seja bem-vindo!"
}

nome_cumprimento
