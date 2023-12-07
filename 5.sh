#!/bin/bash

archivo_bd="bdlibros.txt"

function mostrar_generos() {
    echo "G  neros disponibles: Ficci  n, No ficci  n, Ciencia ficci  n, Misterio, Romance, Aventura"
}

read -p "Ingrese el t  tulo del libro: " titulo
read -p "Ingrese el a  o de publicaci  n: " ano
read -p "Ingrese la editorial: " editorial

mostrar_generos
read -p "Ingrese el g  nero del libro: " genero

while [[ ! $genero =~ ^(Ficci  n|No\ ficci  n|Ciencia\ ficci  n|Misterio|Romance|Aventura)$ ]]; do
    echo "G  nero no v  lido. Por favor, elija uno de los g  neros disponibles."
    mostrar_generos
    read -p "Ingrese el g  nero del libro: " genero
done

nueva_linea="$titulo;$ano;$editorial;$genero"

echo "$nueva_linea" >> "$archivo_bd"

echo "Los datos del libro se han a  adido correctamente al archivo $archivo_bd."