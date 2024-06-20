#!/bin/bash

#variable para verificar que se ha ingresado una cadena
es_valido=0 

echo "Edad probable según el nombre"

read -p "Ingrese un nombre: " nombre

#bucle para asegurarse de que se ha ingresado bien la cadena
while [ "$es_valido" -eq 0 ]; do
    if [[ -z "$nombre" ]]; then
        echo "El nombre no puede estar vacío, intenta de nuevo."
        read -p "Ingrese un nombre: " nombre
    else
        es_valido=1            
    fi
done

#llamada a la API para obtener datos del nombre ingresado
respuesta_api=$(curl -s "https://api.agify.io/?name=$nombre")

# Extraer la edad de la respuesta usando grep
edad=$(echo $respuesta_api | grep -o '"age":[^,]*' | grep -o '[0-9]\+')

#verificación de los datos devueltos por la API
if [ -n "$edad" ]; then
    echo "La edad promedio para el nombre $nombre es: $edad años."
else
    echo "No se encontró información para el nombre $nombre."
fi
