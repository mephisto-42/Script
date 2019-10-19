#!/bin/sh

if [ -z $1 ]
then
	echo "Utilisateur manquant"
	exit;
fi

url="https://github.com/$1?tab=repositories";
wget $url 2> /dev/null;
grep "codeRepository" $1* > tmp.log
rm -rf $1* 
lenuser=`expr length $1`
lenuser2=`expr $lenuser + 9`

while read ligne
do
	line=`echo $ligne | awk '{print $2}'`;
	len=`expr length $line`
	max=`expr $len - $lenuser2`
	repo=`expr substr $line $lenuser2 $max`
	if [ -d $repo ]
	then
		echo "Le repo \"$repo\" existe déjà";
	fi
	if [ ! -d $repo ]
	then
		git="https://github.com/$1/$repo.git"
		git clone $git
	fi
done < tmp.log
rm -rf tmp.log
