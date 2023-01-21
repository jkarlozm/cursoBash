#!/bin/bash
#Author: Carlos Zárete
#Descarga e instala actualizaciones y realiza limpieza

sudo apt update && sudo apt upgrade -y

sudo apt autoremove
sudo apt autoclean && sudo apt clean
