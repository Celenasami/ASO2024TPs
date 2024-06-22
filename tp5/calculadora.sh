#! /bin/bash
echo "MENU"
echo " Ingrese una opcion"
echo " 1) Suma"
echo " 2) Resta"
echo " 3) Multiplicar"
echo " 4) Dividir"
echo "=============="
read opcion

case $opcion in 
1)
echo "ingrese el primer numero" 
read numero1
echo "ingrese el segundo numero" 
read numero2
let Suma=numero1+numero2
echo " El resultado de la suma es $Suma" ;;
2)
echo "ingrese el primer numero" 
read numero1
echo "ingrese el segundo numero" 
read numero2
let Resta=numero1-numero2
echo " El resultado de la Resta es $Resta" ;;

3)
echo "ingrese el primer numero" 
read numero1
echo "ingrese el segundo numero" 
read numero2
let Multiplicar=numero1*numero2
echo " El resultado de la Multiplicacion es $Multiplicar";;

4)
echo "ingrese el primer numero" 
read numero1
echo "ingrese el segundo numero distinto de 0" 
read numero2
let Dividir=numero1/numero2
echo " El resultado de la Division es $Dividir";; 
*) 
echo "opcion invalida" ;;
esac 
