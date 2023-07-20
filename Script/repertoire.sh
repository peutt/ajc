#! /bin/sh

for username in "$@"; do

if id -u "$username" ; then
    home_dir=$(getent passwd "$username" | cut -d ':' -f 6)

    user_shell=$(getent passwd "$username" | cut -d ':' -f 7)

    echo "Nom d'utilisateur : $username"
    echo "Répertoire de connexion : $home_dir"
    echo "Shell utilisé : $user_shell"
    echo
else
    echo "Utilisateur $username non trouvé"
    echo
fi
done