#! /bin/sh

echo "Bonjour, ce script ne sert a rien"
echo "veuillez entrer un chiffre"
read chiffre

#ajout variable RANDOM
r=`echo $RANDOM`;
echo $r &&

#Rajout JD jeu
if [ "$chiffre" -ge "$r" ];then
# Rajout JP $chiffre
echo "Perdu avec chiffre :" $chiffre
else
echo "Gagné avec chiffre :" $chiffre
fi
