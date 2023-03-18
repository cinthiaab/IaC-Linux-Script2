#!/bin/bash

echo "Atualizando servidor"

apt-get update -y
apt-get upgrade -y

echo "Instalando o apache2"

apt-get install apache2 -y

echo "Instalando o unzip"

apt-get install unzip -y

echo "Baixando repositório do github e descompartando pasta"
cd /temp
wget https://github.com/cinthiaab/portifolio/archive/refs/heads/main.zip 
unzip  main.zip

echo "Copiando os arquivos do repositório no diretório padrão do apache"
cp /scripts2/portifolio-main/* /var/www/html -R
