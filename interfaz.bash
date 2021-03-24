#!/bin/bash


. funcions2.bash

function Menu {
echo "-----------------------------------------------"
echo "--	Benvingut al programa d'inicialització"
echo "-- 	$USER"
echo "--    $DATE"
echo "-----------------------------------------------"
echo "--	Menú d'opcions:	"
echo "--	1. Gestió d'usuarios i grups"
echo "--	2. Gestio de directoris i fitxers"
echo "--	3.Gestió de programari"
echo "--	4.Sortir"
echo "-----------------------------------------------"

read -p "Escull una opció " op

case $op in
	1) gestiousuarisigrups ;;
	2) gesetiodirectorisifitxers ;;
	3) gestiodeprogramari ;;
	4) sortir ;;
	*) echo "-----------------------------------------------------------------"
	   echo "--"
	   echo "--			A REVEURE $USER"
	   echo "--"
	   echo "-----------------------------------------------------------------"
esac
}
Menu


