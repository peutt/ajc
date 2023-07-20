#! /bin/sh

echo "Bonjour, ce script ne sert a rien"
echo "veuillez entrer un chiffre"
read chiffre

#Rajout JD jeu
if [ "$chiffre" -ge 6 ];then
# Rajout JP $chiffre
echo "Perdu avec chiffre :" $chiffre
else
echo "Gagné avec chiffre :" $chiffre
fi
