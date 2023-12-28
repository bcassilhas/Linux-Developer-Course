#!/bin/bash

echo "Realizando update no servidor..."

apt-get update -y
apt-get upgrade -y

echo "Instalando apps necessários..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando os arquivos na pasta temporária"
cd/tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando os arquivos da aplicação"
cd linux-site-dio-main
cp -R * /var/www/html/

