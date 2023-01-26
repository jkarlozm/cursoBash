#!/bin/bash
#Author: Carlos Zárete
#Instalar webmin

#Es necesario installar perl sudo apt perl

#Es necesario trabajar como su
su -l

#Actualizar paquetes del sistemas operativo
sudo apt update && sudo apt upgrade -y

#Descargar webmin (Debian package) , revisar versión https://www.webmin.com/
#wget -c continua las descargas interrumpidas
wget -c http://prdownloads.sourceforge.net/webadmin/webmin_2.013_all.deb

#Instalar paquetes webmin
dpkg -i package.deb

#Si marca error de dependencias corregir con apt install -f

#Enlistamos las tareas que se estan ejecutando, se debe de apreciar webmin
ps -ax

#Permitir puertos 10000 en el firewall
sudo ufw 10000/tcp

sudo apt autoremove
sudo apt autoclean && sudo apt clean

#Abrir servicio en el navegador sobre el puerto IP:10000
