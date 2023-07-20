#! /bin/sh

echo -e "Veuillez entrez un nombre : \c" ; read num1 
echo -e "Veuillez entrez un operateur de calcul : \c"; read op
echo -e "Veuillez entrez un second nombre : \c"; read num2
echo $op
if [ $op = "+" ] || [ $op = "-" ] || [ $op = "\*" ] || [ $op = "/" ] || [ $op = "%" ]
then (
echo `expr $num1 $op $num2`
)
else echo "error"
fi

