#!/bin/bash

function crearFitxer {
read -p "Indica la ruta on vols crear el fitxer " path
if [[ ! -d $path ]];
then
echo "------------------------------"
echo "-- Esta ruta no es correcta"
echo "-----------------------------."
else
read -p "Indica el nom del fitxer " fitxer
read -p "Indica l'extensió del fitxer " extensio
touch $path $fitxer $extensio
fi
}

function llegirFitxer {
read -p "Indica el nom del fitxer que vols llegir " fitxer
cat $fitxer

}

function eliminarFitxer {
read -p "Indica el nom del fitxer que vols eliminar " fitxer
rm $fitxer
}

function canviarPermisos {
read -p "Indica el nom del fitxer que vols modificar els permisos " fitxer
read -p "Quins permisos li vols assignar ? " permisos
chmod $fitxer $permisos

}

function assignarUsuariPropietari {
read -p "Indica el nom del fitxer " fitxer
read -p "Indica el nom de l'usuari " usuari
chown $usuari $fitxer
}


function assignarGrupPropietari {
read -p "Indica el nom del fitxer " fitxer
read -p "Indica el nom del grup " grup
chgrp $grup $fitxer
}

function veureMascara {
umask
#Visualitza la màscara
}

function assignarMascara {
read -p "Quina màscara vols assignar? " mascara
#Assigna màscara
umask $mascara
}

function crearDirectori {
read -p "Escriu la ruta i el nom del nou directori que vols crear " directori
#Crea el directori
mkdir $directori
}

function moureDirectori {
read -p "Escriu el directori que vols moure " directoriOrigen
read -p "Escriu la ruta on el vols moure " directoriDesti
#Mou el directori
mv -r  $directoriOrigen $directoriDesti
}

function eliminarDirectori {
read -p "Escriu la ruta del directori que vols eliminar " directori
#Comprova que el directori existeix
#Comprova si el directori està buit, si està buit elimina'l si està ple pregunta si vols eliminar tot l'interior

if [[ -z "$(ls -A $directori)" ]]; then
echo "Empty"
rm -r $directori
else
echo "Not Empty"
fi
	
}

function veureDetallDirectori {
	read -p "Escriu la ruta del directori que vols visualitzar " directori
	ls $directori
}

