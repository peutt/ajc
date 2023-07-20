#!/bin/sh
file="$1"

for file in "$@"
do 
#maj=$(echo "$file" | tr '[:lower:]' '[:upper:]')
maj=$(echo "$file" | tr '[:upper:]' '[:lower:]')

if [ -e "$maj" ]
then
echo "Erreur: Le fichier $maj existe déjà."
else

mv "$file" "$maj"
fi
done

