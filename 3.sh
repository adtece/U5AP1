#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Uso: $0 <valor>"
    exit 1
fi

valor=$1

if ! [[ $valor =~ ^[1-9][0-9]*$ ]]; then
    echo "Por favor, introduce un valor entero positivo mayor que 0."
    exit 1
fi

for ((i = 0; i <= valor; i++)); do
    echo $i
done