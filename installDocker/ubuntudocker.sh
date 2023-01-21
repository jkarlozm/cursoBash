#!/bin/bash
#Author: JKarloz

#Instalación Docker
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-get update
sudo apt-get install -y docker-ce

# Linux post-install
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker

#Instalación Docker-compose
#Consular pagina de versiones https://github.com/docker/compose/releases

#Descarga la versión 1.26.0 y guarda el ejecutable en /usr/local/bin/docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.26.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
#Establece los permisos correctos para que el comando docker-compose sea ejecutable.
sudo chmod +x /usr/local/bin/docker-compose
#Verificamos que la instalación se realizo correctamente.
docker-compose --version
