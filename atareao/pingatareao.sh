#!/bin/bash

#Este script solicitará al usuario ingresar una dirección IP
#o un nombre de dominio y luego enviará 3 paquetes de ping
#a esa dirección utilizando el comando ping.
echo -n "Ingrese una dirección IP o un nombre de dominio:"
read host
#Detiene el ping después de enviar 3 paquetes.
ping -c 3 $host
