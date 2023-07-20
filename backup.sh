<<<<<<< HEAD
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
=======
#!/bin/sh
backup_directory="backup_folder"
# Créer le répertoire de sauvegarde s'il n'existe pas
if cd /tmp && [ ! -d "$backup_directory" ] && cd /mnt/c/Users/aymer/Desktop/ajc; then
    mkdir "$backup_directory"
fi
# Fonction pour effectuer une sauvegarde
perform_backup() {
    date_stamp=$(date +"%Y-%m-%d-%H-%M-%S")
    backup_file="backup-$date_stamp.tar.gz"
    fileListe=$(ls /mnt/c/Users/aymer/Desktop/ajc)
    cd /mnt/c/Users/aymer/Desktop/ajc
    tar -czf "/tmp/$backup_directory/$backup_file" $fileListe
}
# Fonction pour afficher la liste des backups
list_backups() {
    ls "/tmp/$backup_directory"
}
# Fonction pour supprimer les anciens backups sauf le dernier
delete_old_backups() {
    cd "/tmp/$backup_directory" && (ls -t | tail -n +2 | xargs rm -f) && cd /mnt/c/Users/aymer/Desktop/ajc
}

# Menu principal
while true; do
    echo "Menu de sauvegarde :"
    echo "1. Effectuer une sauvegarde"
    echo "2. Afficher la liste des backups"
    echo "3. Supprimer les anciens backups sauf le dernier"
    echo "4. Quitter"
    read -p "Choisissez une option (1/2/3/4) : " option
    case $option in
        1) perform_backup ;;
        2) list_backups ;;
        3) delete_old_backups ;;
        4) exit ;;
        *) echo "Option invalide. Veuillez choisir une option valide." ;;
    esac
    echo ""
done
>>>>>>> 20e0c28e7f577909eee1a0c405393f73f79f8561
