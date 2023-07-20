#! /bin/sh
texte="$@"
nb_caract=${#texte}
encadrement="* "
encadrer_stars() {
	for i in $(seq $nb_caract);do
	encadrement="$encadrement* "
	done
	encadrement="$encadrement*\n"
	
	encadrement="$encadrement* "
	encadrement="$encadrement$texte"
	for i in $(seq $nb_caract);do
	encadrement="$encadrement "
	done
	encadrement="$encadrement*\n"
	
	encadrement="$encadrement* "
	for i in $(seq $nb_caract);do
	encadrement="$encadrement* "
	done
	encadrement="$encadrement*\n"
	
	echo "$encadrement"
}
encadrer_stars
