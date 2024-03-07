#!/bin/bash

# Script para conectarse a una red WiFi específica utilizando nmcli

# Variables
SSID="MiRedWifi"
PASSWORD="MiContrasena"

# Mostrar las redes WiFi disponibles
nmcli device wifi list

# Pedir al usuario que elija una red WiFi
read -p "Introduce el nombre de la red WiFi a la que deseas conectarte: " selected_ssid

# Conectar a la red WiFi seleccionada
nmcli device wifi connect $selected_ssid password $PASSWORD

# Verificar el estado de la conexión
echo "Estado de la conexión WiFi:"
nmcli connection show --active | grep $selected_ssid
