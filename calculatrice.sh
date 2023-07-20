#! /bin/sh
echo "quel type d'opération voulez vous executer?"
echo "1) addition"
echo "2) soustraction"
echo "3) multiplication"
echo "4) division"
read choix

case $choix in
1)
read -p "Veuillez saisir un premier nombre : " number1   
read -p "Veuillez saisir un deuxième nombre : " number2
echo `expr $number1 + $number2`
;;
2)
read -p "Veuillez saisir un premier nombre : " number1   
read -p "Veuillez saisir un deuxième nombre : " number2
echo `expr $number1 - $number2`
;;
3)
read -p "Veuillez saisir un premier nombre : " number1   
read -p "Veuillez saisir un deuxième nombre : " number2
echo `expr $number1 \* $number2`
;;
4)
read -p "Veuillez saisir un premier nombre : " number1   
read -p "Veuillez saisir un deuxième nombre : " number2
echo $(($number1 / $number2))','$(($number1 % $number2))
;;
*)
echo "error"
;;
esac
