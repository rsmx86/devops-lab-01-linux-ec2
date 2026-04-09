#!/bin/bash

echo "Atualizando pacotes..."
sudo apt update
echo "Instalando Nginx..."
sudo apt install nginx -y
echo "Criando página web..."
echo "<h1> Rodrigo DevOps Journey</h1>" | sudo tee /var/www/html/index.html

echo "Iniciando Nginx..."
sudo systemctl start nginx
sudo systemctl enable nginx

echo "Finalizado"

