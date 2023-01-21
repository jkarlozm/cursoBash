#!/bin/bash
#Author: Carlos Zárete
#Configuración y preparación de un servidor en ubuntu

#Actualización de paquetes
apt update && apt upgrade

#Creacion de un usuario nuevo
adduser karlozvpn
usermod -aG sudo karlozvpn
su - karlozvpn

#Descarga y ejecución de script
wget https://raw.githubusercontent.com/xharly/cursoBash/master/installDocker/ubuntudocker.sh
chmod +x ubuntudocker.sh
./ubuntudocker.sh

#Limpieza


