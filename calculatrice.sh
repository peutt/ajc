#! /bin/sh

read -p "Veuillez saisir un premier nombre : " number1  
read -p "Veuillez entrer un opérateur : " operator 
read -p "Veuillez saisir un deuxième nombre : " number2

result=`expr $number1 $operator $number2`

if [ $result ] 
then
echo $result
else
echo "Il y a une erreur"
fi
