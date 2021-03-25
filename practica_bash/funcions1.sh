#!/bin/bash


function  afegirusuari {
echo "-- Indique el nombre de usuario"
read nombreusuario 
if [[ $(getent passwd $nombregrupo) ]];
then 
echo "Usuario ya existe"
else 
adduser $nombreusuario
echo "-- Usuario $nombreusuario creado correctamente"
echo "----------------------------------------------"
fi
}

function afegirgrup {
echo "-- Indique el nombre del grupo"
read nombregrupo
if [[ $(getent group $nombregrupo) ]];
then
echo "El Grupo ya existe"
else
groupadd $nombregrupo
echo "-- Grupo $nombregrupo creado correctamente"
echo "------------------------------------------"
fi
}

function modificausuari {
echo "-- Indica el nombre del usuario para modificar"
read modificausuario
if [[ $(getent passwd $modificausuario) ]];
then 
echo "-- Tiene 8 opciones"
echo "-- -c | Modifica el comentari de l'usuari"
echo "-- -d | Modifica el directori de treball o home de l’usuari"
echo "-- -e | Modifica la data d’expiració del compte. Format AAAA-MM-DD"
echo "-- -G | Modificar altres grups als que pot formar part l’usuari (separat per comes)"
echo "-- -l | Canvia el login o el nom de l’usuari"
echo "-- -L | Bloqueja el compte d’usuari, no esborra res només el deshabilita"
echo "-- -U | Desbloqueja un compte previament bloquejat amb l’opció -L"
echo "-- passwd | Modifica la contrasenya de l’usuari"
read opciones
if [[ $opciones == "passwd" ]];
then
passwd $modificausuario
else 
read -p "Introduce el valor (solo si hay que introducir algo)" valor
usermod $opciones $valor $modificausuario
fi
else
echo "-- Usuario no existente"
echo "-----------------------"
fi
}

function modificagrup {
echo "--Modificar un grupo"
read modificargrupo
if [[ $(getent group $modifcargrupo) ]];
then
echo "-- Indica que nuevo nombre para el grupo"
read nombrenuevogrupo
groupmod -n $nombrenuevogrupo $modificargrupo
else
echo "--Grupo no existente"
echo "--------------------"
fi
}
function eliminausuari {
echo "-- Indique el nombre del usuario a eliminar"
read eliminarnom
userdel $eliminarnom 
echo "-- Usuario $eliminarnom se ha borrado correctamente"
echo "Desea tambien eliminar el directori de $eliminarnom"
read directorio
if [[ $directorio == "si" ]];
then 
deluser --remove-home $eliminarnom
fi
echo"---------------------------------------------------"
}

function eliminagrup {
echo "-- Indique el nombre del grupo a eliminar"
read eliminargrupo
groupdel $eliminargrupo
echo "-- Grupo $eliminargrupo se ha borrado correctamente"
echo "---------------------------------------------------"
}

function llistausuarissistema {
echo "-- Llista de usuaris del sistema"
cat /etc/passd | cut -d ":" -f1
echo "--------------------------------"
}

function llistausuarisgrup {
echo "-- Llista de usuaris del grup"
cat /etc/group | cut -d ":" -f1
echo "-------------------------------"
}

function carregausuarismassiva {
while read line
do
username=$( echo $line |cut -d "," -f 1)
grup=$( echo $line |cut -d "," -f 2)
dataNaixement=$( echo $line |cut -d "," -f 3)
ciutat=$( echo $line |cut -d "," -f 4)
telefon=$( echo $line |cut -d "," -f 5)
email=$( echo $line |cut -d "," -f 6)
password=$( echo $line |cut -d "," -f 7)
echo $username $grup $dataNaixement $ciutat $telefon $email $password
done 1< users.csv
}

