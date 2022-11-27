#!/bin/bash

clear
echo -e "\n\nAtualizando sistema..."
sudo apt-get update

echo -e "\n\nRealizando upgrade..."
sudo apt-get upgrade

echo -e "\n\nRemove os pacotes..."
sudo apt autoremove -y

echo -e "\n\nAtualização finalizada.\n\n"



echo -e "----------------------------------"

echo -e "Instalando o Apache..."

sudo apt install apache2 -y

echo -e "----------------------------------"

echo -e "Instalando o Unzip..."

sudo apt install unzip -y



echo -e "\n\n----------------------------------"

echo -e "Download do site..."

wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

rm -rf tmp
unzip -u -q main.zip -d tmp
rm -rf main.zip

echo -e "\n\nDownload realizado."


echo -e "\n\nMover o site para o ambiente Apache"

rm -rf var/www/html/*
cp -R tmp/linux-site-dio-main/* /var/www/html/
rm -rf tmp

echo -e "\n\n## Instalação do site concluída.##"
