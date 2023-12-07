#!/bin/bash

while true; do
    read -p "Introduce un valor del dia num  rico del mes (1 a 30): " dia

    if [[ $dia -ge 1 && $dia -le 30 ]]; then
        dia_semana=$((($dia - 1) % 7))

        case $dia_semana in
            0) nombre_dia="Lunes" ;;
            1) nombre_dia="Martes" ;;
            2) nombre_dia="Miercoles" ;;
            3) nombre_dia="Jueves" ;;
            4) nombre_dia="Viernes" ;;
            5) nombre_dia="Sabado" ;;
            6) nombre_dia="Domingo" ;;
        esac

        echo "El dia $dia es un $nombre_dia."
        break
    else
        echo "Error: Introduce un valor dentro del rango permitido (1 a 30)."
    fi
done