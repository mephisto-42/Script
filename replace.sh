#!/bin/sh

testa=`find . -type f -print | xargs grep "$1" | awk 'NR == 1' | wc -l`
while [ $testa -eq 1 ]
do
    file=`find . -type f -print | xargs grep "$1" | awk 'NR == 1'`
    fichier=`echo $file | cut -d : -f 1`
    tmp="${fichier}_tmp"
    echo $tmp
    echo $fichier
    cat $fichier | sed -e "s/$1/$2/g" > $tmp
    rm $fichier
    mv $tmp $fichier
    testa=`find . -type f -print | xargs grep "$1" | awk 'NR == 1' | wc -l`
done
