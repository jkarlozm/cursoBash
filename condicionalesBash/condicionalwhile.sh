#!/bin/bash
#Author: Carlos Zárete
#Sentencia wile, lectura de un archivo de texto

while read line; do
	response=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "$line")
	echo $line : $response
done < lista.txt
