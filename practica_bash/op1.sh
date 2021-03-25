#!/bin/bash

. funcions1.bash

function gestiousuarisigrups {
echo "Opció 2. Gestió de directoris i fitxers"
echo "1. Afegir un usuari"
echo "2. Afegir un grup"
echo "3. Modificar un usuari"
echo "4. Modificar un usuari"
echo "5. Eliminar un usuari"
echo "6. Eliminar un grup"
echo "7. Llista els usuaris del sistema"
echo "8. Llista els usuaris del grup"
echo "9. Carregar usuaris de manera massiva"
echo "10. Tornar"

read -p "Escull una opció " op

case $op in
        1) afegirusuari;;
        2) afegirgrup;;
        3) modificausuari ;;
        4) modifmodificagrup ;;
        5) eliminausuari ;;
        6) eliminagrup ;;
        7) llistausuarissitema ;;
        8) llistausuarisgrup ;;
        9) carregausuarismassiva ;;
        10) 
        11) ;;
                *) echo "$op Invalid option"
esac
}


function sortir {

echo "-----------------------------------------------------------------"
echo $linea
echo "--"
echo "--                     A REVEURE $USER"
echo "--"
echo "-----------------------------------------------------------------"

}
