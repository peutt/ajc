# Commandes Git Utiles

## Configuration Globale

- `git config --global user.name "Votre Nom"` : Configure le nom d'utilisateur global.
- `git config --global user.email "votre_email@example.com"` : Configure l'e-mail global.

## Initialisation et Clonage

- `git init` : Initialise un nouveau dépôt Git localement.
- `git clone <URL>` : Clone un dépôt distant dans un nouveau répertoire local.

## Commandes de Base

- `git status` : Affiche l'état des fichiers dans le répertoire de travail et de l'index (staging area).
- `git add <fichier>` : Ajoute un fichier spécifique à l'index (staging area).
- `git add .` : Ajoute tous les fichiers modifiés et nouveaux à l'index.
- `git commit -m "message du commit"` : Crée un commit à partir des fichiers dans l'index avec un message de description.
- `git log` : Affiche l'historique des commits.

## Commandes de Collaboration

- `git pull` : Récupère et fusionne les modifications du dépôt distant vers votre branche locale.
- `git push` : Envoie les commits locaux vers le dépôt distant.
- `git remote add <nom_remote> <URL>` : Ajoute un nouveau dépôt distant sous le nom spécifié.
- `git branch` : Affiche la liste des branches du dépôt. L'astérisque (\*) indique la branche actuelle.
- `git checkout <nom_branche>` : Permet de changer de branche.
- `git merge <branche_source>` : Fusionne la branche spécifiée dans la branche actuelle.

## Commandes de Comparaison

- `git diff` : Affiche les différences entre le répertoire de travail et l'index (staging area).
- `git diff <commit1> <commit2>` : Affiche les différences entre deux commits spécifiés.

## Commandes d'Annulation

- `git reset <fichier>` : Retire le fichier de l'index sans perdre les modifications locales.
- `git reset --hard <commit>` : Réinitialise l'index et le répertoire de travail au commit spécifié.
- `git rm <fichier>` : Supprime un fichier de Git et du répertoire de travail.
- `git stash` : Met de côté les modifications locales temporaires dans une pile (stash).

## Gestion de confli pour les fichier binaire

-`git checkout --their <fichierBinare>`
-`git checkout --our <fichierBinaire>`
