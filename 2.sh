#!/bin/bash
echo "Introduce un valor mayor que 0"
read valor

if [ $(($valor % 2)) -eq 0 ]; then
  echo "El numero $valor es par."
else
  echo "El numero $valor es impar."
fi