#! /bin/sh

echo "Menu"
echo "1 - Effectuer une sauvegarde"
echo "2 - Afficher la liste des sauvegardes"
echo "3 - Supprimer les anciennes sauvegardes à l'exception de la dernière"

read -p "Veuillez choisir une option : " choice

case $choice in 

"1") $(tar zvcf ./backups/backup_$(date +%Y-%m-%d-%T).tar.gz ./files);;
"2") ls -la ./backups;;
"3") count=$(ls -la ./backups/backup* | wc -l) 
for backup in backups/*
do
let counter++
if [ $counter -lt $count ] 
then
rm $backup
fi
done
;;
esac
