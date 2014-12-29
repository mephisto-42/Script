#!/bin/sh

for file in `ls *.c`
do
	test=`grep $file Makefile | wc -l` 
	if [ $test -eq 0 ]
	then
		echo "$file non found in Makefile"
	fi
done
