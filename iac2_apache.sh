#!/bin/bash

echo "Preparando ambiente para site projeto Dio."

apt-get update -y
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y
apt-get install wget -y

echo "Download repositorio githu e alocando na pasta /var/www/html/ ."

cd /temp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Fim do processo."
