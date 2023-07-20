#! /bin/sh
#auteur raphael de oliveira


#definition des fonction
#*************************************
fonction1(){
echo \*${*}
}
#Fonction numero 2 : Encadre le texte par une \* apres le texte
fonction2(){
echo ${*}\*
}
#Fonction numero 3 : Encadre le texte par une rangée d\'étoiles en haut
fonction3(){
texte=$*
nombre_etoiles=(echo $*|wc -m`)

for var in `seq 2 $nombre_etoiles`
do
printf \*
done

printf "\n"
printf "$texte"
printf "\n"
}
#Fonction numero 4 : Encadre le texte par une rangée d\'étoiles en bas
fonction4(){
nombre_etoiles=`echo $1|wc -m`

printf $1
printf "\n"
for var in `seq 2 $nombre_etoiles`
do
printf \*
done
printf "\n"
}
#Fonction numero 5 : QUitte le programme
fonction_quitter(){
exit 0
}
#Fonction numero 6 : Fonction encadre
fonction_encadre(){
texte=$*
nombre_etoiles=`echo $texte|wc -m`
fin=$(($nombre_etoiles / 2))
fin2=$(( $fin + 1))
printf '* '
for var in `seq 2 $fin2`
do
printf \*
printf ' '
done
condition=$(($nombre_etoiles % 2))
if [ $condition -eq 0 ]
then
printf "*"
else
printf "* *"
fi

printf "\n"

if [ $condition -eq 0 ]
then
printf "* ${texte} *"
else
printf "* ${texte}  *"
fi


printf "\n"

printf '* '
for var in `seq 2 $fin2`
do
printf \*
printf ' '
done

if [ $condition -eq 0 ]
then
printf "*"
else
printf "* *"
fi

printf "\n"
}
#*************************************
# Le main
echo Entrer votre texte :

read text
choix=0
while [ $choix -gt 6 ]||[ $choix -lt 1 ]
do
echo 1 : Encadre le texte par une \* avant le texte
echo 2 : Encadre le texte par une \* apres le texte
echo 3 : Encadre le texte par une rangée d\'étoiles en haut
echo 4 : Encadre le texte par une rangée d\'étoiles en bas
echo 5: quitter
echo 6 : tout faire en meme temps encadre
read choix
done



case $choix in
1) echo Vous avez cliqué sur 1
fonction1 $text
;;
2) echo Vous avez cliqué sur 2
fonction2 $text
;;
3) echo Vous avez cliqué sur 3
fonction3 $text
;;
4) echo Vous avez cliqué sur 4
fonction4 $text
;;
5) echo Vous avez cliqué sur 5
fonction_quitter $text
;;
6) echo Vous avez cliqué sur 6
fonction_encadre $text
esac
exit 0
