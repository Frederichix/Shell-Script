#!/bin/bash
#scp backup-server.sh fredserver@192.168.15.7:/home/fredserver
#tar -cvzf exemplo.tar.gz testediretorio/

compactador() {
	read -p "Dê um  nome ao arquivo para ser criado (tar.gz): " compactar
	read -p "Digite o caminho a ser compactado: " caminho

	if [ -d $caminho ]; then
		tar -czf $compactar.tar.gz $caminho
		echo "Caminho compactado com sucesso!"
		arquivo_compactado=$compactar.tar.gz
		conexao $arquivo_compactado
	else
		echo "Não é um caminho"
	fi

}

conexao() {
	read -p "Digite o nome do host: " host
	read -p "Digite o IP: "	ip
	read -p "Digite o diretório de destino: " diretorio
	scp $arquivo_compactado $host@$ip:$diretorio

}

compactador
