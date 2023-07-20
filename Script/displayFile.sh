#! /bin/sh
echo "\n"
echo "Voici des informations sur les fichiers du repertoire actuel"
echo "\n"
fileNameList=$(ls -la | grep -E "^-.*" | tr -s ' '|cut -d' ' -f9)
for i in $fileNameList;do
	fileSize=$(du -h "$i" | cut -f1)
	fileType=$(file -b "$i")
	fileName="$i"
	echo " NOM :" $fileName ', TYPE :' $fileType ', TAILLE :' $fileSize
done



