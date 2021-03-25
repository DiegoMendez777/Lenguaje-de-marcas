#!/bin/bash0

. funcions1.sh
. funcions2.sh
clear
opcion=0
while [ $opcion != 4 ]
do
DIA=`date +"%d/%m/%Y"`
echo "------------------------------------------"
echo "-- Benvingut al programa d'inicialització"
echo "-- $USER"
echo "-- $DIA"
echo "------------------------------------------"
echo "-- Menú d'opcions:"
echo "-- 1. Gestió d'usuaris i grups"
echo "-- 2. Gestió de directoris i fitxers"
echo "-- 3. Gestió de programari"
echo "-- 4. Sortir"
echo "------------------------------------------"
read opcion
case $opcion in
	1)
	echo "------------------------------------------"
	echo "-- 1.Afegir un usuari"
	echo "-- 2.Afegir un grup"
	echo "-- 3.Modificar un usuari"
	echo "-- 4.Modificar un grup"
	echo "-- 5.Eliminar un usuari"
	echo "-- 6.Eliminar un grup"
	echo "-- 7.Llista els usuaris del sistema"
	echo "-- 8.Llista els usuaris del grup"
	echo "-- 9.Carregar usuaris de manera massiva"
	echo "-- 10.Tornar"
	echo "------------------------------------------"
	read opcion1
	;;
	2)
	echo "-- 1.Crear un fitxer"
	echo "-- 2.Llegir un fitxer"
	echo "-- 3.Eliminar un fitxer"
	echo "-- 4.Canviar permisos d’un fitxer"
	echo "-- 5.Assignar usuari propietari a un fitxer / directori"
	echo "-- 6.Assignar grup propietari a un fitxer / directori"
	echo "-- 7.Veure la màscara"
	echo "-- 8.Assignar una nova màscara"
	echo "-- 9.Crear un directori"
	echo "-- 10.Moure un directori"
	echo "-- 11.Eliminar un directori"
	echo "-- 12.Veure detall d’un directori"
	echo "-- 13.Tornar"
	read opcion2
	;;
	4)
	echo "------------------------------------------"
	echo "--"
	echo "-- A REVEURE $USER."
	echo "--"
	echo "------------------------------------------"
        exit
	;;
esac

case $opcion1 in
	1) afegirusuari ;;
	2) afegirgrup ;;
	3) modificausuari ;;
	4) modificagrup ;;
	5) eliminausuari ;;
	6) eliminagrup ;;
	7) llistausuarissistema ;;
	8) llistausuarisgrup ;;
	9) carregausuarismassiva ;;
	10) ;;
esac


case $opcion2 in
	1) crearFitxer ;;
	2) llegirFitxer ;;
	3) eliminarFitxer ;;
	4) canviarPermisos ;;
	5) assignarUsuariPropietari ;;
	6) assignarGrupPropietari ;;
	7) veureMascara ;;
	8) assignarMascara ;;
	9) crearDirectori ;;
	10) moureDirectori ;;
	11) eliminarDirectori ;;
	12) veureDetallDirectori ;;
	13) ;;
esac
done
