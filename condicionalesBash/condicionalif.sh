#!/bin/bash
#Author: Carlos Zárete
#Sentencia if con un argumento

if [ $1 == https://peladonerd.com ]; then
	echo "Siempre 200, no me tengo que fijar."
else
	response=$(curl --write-out "%{http_code}\n" --silent --output /dev/null "$1")
	echo $1 : $response
fi
