#!/bin/sh

if [ -z $1 ]
then
	echo "Argument manquant"
	exit
fi

if [ -e $1 ]
then
	Makefile=`echo "$1"`
else
	echo "Fichier invalide"
	exit
fi

echo $Makefile

for file in $(ls -R *.c)
do
	if [ `grep $file $Makefile | wc -l` -eq 0 ]
	then
		echo "$file non présent dans le Makefile"
	fi
done
