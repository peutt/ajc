#! /bin/sh
texte="$@"
nb_caract=$(( ${#texte} / 2))
encadrement="* "
encadrer_stars() {
	for i in $(seq $nb_caract);do
	encadrement="$encadrement* "
	done
	encadrement="$encadrement*\n"
	
	encadrement="$encadrement* "
	encadrement="$encadrement$texte"
	
	encadrement="$encadrement *\n"
	
	encadrement="$encadrement* "
	for i in $(seq $nb_caract);do
	encadrement="$encadrement* "
	done
	encadrement="$encadrement*\n"
	
	echo "$encadrement"
}
encadrer_stars
