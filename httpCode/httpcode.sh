#!/bin/bash
#Author: Carlos Zárete
#Estrae codigo de estado del protocolo hhtp de la web que se pasa como
#argumento en el comando

#Creamos variable "response" en la cual se almacena el resultado del comando.
#$() se emplea para introducir un comando a una variable
#$1 se emplea para almacenar un argumento
response=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "$1")

#imprimimos argumento "$1" mas la variable "$response"
echo $1 : $response
