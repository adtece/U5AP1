#!/bin/bash

archivo_bd="bdlibros.txt"

function buscar_por_titulo() {
    read -p "Ingrese el t  tulo a buscar: " titulo_buscar
    grep -i "$titulo_buscar" "$archivo_bd"
}

function buscar_por_ano() {
    read -p "Ingrese el a  o a buscar: " ano_buscar
    grep "$ano_buscar" "$archivo_bd" | grep -Eo "^[^;]+;$ano_buscar;[^;]+;[^;]+"
}

function buscar_por_editorial() {
    read -p "Ingrese la editorial a buscar: " editorial_buscar
    grep "$editorial_buscar" "$archivo_bd" | grep -Eo "^[^;]+;[^;]+;$editorial_buscar;[^;]+"
}

function buscar_por_genero() {
    read -p "Ingrese el g  nero a buscar: " genero_buscar
    grep "$genero_buscar" "$archivo_bd" | grep -Eo "^[^;]+;[^;]+;[^;]+;$genero_buscar"
}

function insertar_libro() {
    ./libros-anyadir.sh
}

while true; do
    echo "Men  :"
    echo "1) Buscar por t  tulo"
    echo "2) Buscar por a  o"
    echo "3) Buscar por editorial"
    echo "4) Buscar por g  nero"
    echo "5) Insertar libro"
    echo "6) Salir"
    
    read -p "Seleccione una opci  n (1-6): " opcion

    case $opcion in
        1) buscar_por_titulo;;
        2) buscar_por_ano;;
        3) buscar_por_editorial;;
        4) buscar_por_genero;;
        5) insertar_libro;;
        6) echo "Saliendo del programa.   Hasta luego!"; exit 0;;
        *) echo "Opci  n no v  lida. Por favor, elija una opci  n del 1 al 6.";;
    esac
done


