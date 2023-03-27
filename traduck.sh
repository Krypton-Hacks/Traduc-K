#!/bin/bash
#Script creado para traducir español a ingles 
#creado por KevinVarsa
#colors
echo -e $cdk "████████╗██████╗  █████╗ ██████╗ ██╗   ██╗ ██████╗              ██╗  ██╗"
echo -e $cdk "╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██║   ██║██╔════╝              ██║ ██╔╝"
echo -e $cdk "   ██║   ██████╔╝███████║██║  ██║██║   ██║██║         █████╗    █████╔╝ "
echo -e $cdk "   ██║   ██╔══██╗██╔══██║██║  ██║██║   ██║██║         ╚════╝    ██╔═██╗ "
echo -e $cdk "   ██║   ██║  ██║██║  ██║██████╔╝╚██████╔╝╚██████╗              ██║  ██╗"
echo -e $cdk "   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝  ╚═════╝  ╚═════╝              ╚═╝  ╚═╝"
echo -e $cdk "                           (By:KevinVarsa)"

cdk="\e[0;36m"
rdk="\e[0;31m"
ydk="\e[0;33m"
gdk="\e[0;32m"
echo ""
function repeat() {
echo -e $cdk "ESCOJA UNA OPCION"
echo ""
echo "1:Linux"
echo "2:Termux"
echo "3:Salir"
echo ""
read -p "Opcion:" op
echo -e $ydk ""
case $op in
[1-2-3])
if (( $op == 1 ))
then 
echo -e $ydk  "Instalando requisitos..."
sleep 1.5
sudo apt-get update
sudo apt-get install translate-shell -y
elif (( $op == 2 ))
then
echo "Instalando requisitos..."
sleep 1.5
pkg install translate-shell -y
elif (( $op == 3 ))
then
echo -e $ydk "Saliendo..."
sleep 1.8
exit
fi
;;
*) echo -e $rdk "Numero no valido , intente nuevamente..."
sleep 1.5
clear
repeat

;;
esac
}
repeat
#Mensaje español pa traducir
echo -e $cdk "Ingrese el mensaje que desea traducir al español:"
read -p "mensaje: " mensaje

# Traducir el mensaje utilizando translate-shell y el servicio de Google Translate
translation=$(trans :en -b -p google -no-ansi "$mensaje")
echo -e $rdk
# Imprimir el resultado de la traducción
echo -e $gdk "TRADUCIDO CORRECTAMENTE POR: $translation"

