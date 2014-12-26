#!/bin/sh


for file in `ls`
do
	test=`grep "$1" $file | wc -l`
	if [ $test -eq 1 ]
	then
		tmp="${file}_tmp"
		cat $file | sed -e "s/$1/$2/g" > $tmp
		rm $file
		mv $tmp $file
	fi
done
