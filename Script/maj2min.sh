#! /bin/sh

for file in $*
	do
	temp="$(echo $file | tr A-Z a-z)"
	if [ -e "$temp" ]
		then echo $temp "existe deja"
	else mv "$file" "$temp"
	fi
	done
echo "FINI"

#commentaire pour essayer de géénrer du conflit git
