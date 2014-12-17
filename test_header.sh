#/bin/sh

if [ -z $1 ]
then
	echo "Argument manquant"
	exit
fi

test1=`echo $1 | grep "\.c$" | wc -l`
test2=`echo $1 | grep "\.h$" | wc -l`
if [ $test1 -ne 1 ]
then
	if [ $test2 -ne 1 ]
	then
		exit
	fi
fi

r1="/\* \*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\* \*/"
r2="/\*                                                                            \*/"
r3="/\*                                                        :::      ::::::::   \*/"
r5="/\*                                                    +:+ +:+         +:+     \*/"
r7="/\*                                                +#+#+#+#+#+   +#+           \*/"
r10="/\*                                                                            \*/"
l1=`cat $1 | awk 'NR == 1{print;}'`
l2=`cat $1 | awk 'NR == 2{print;}'`
l3=`cat $1 | awk 'NR == 3{print;}'`
l4=`cat $1 | awk 'NR == 4{print;}'`
l5=`cat $1 | awk 'NR == 5{print;}'`
l6=`cat $1 | awk 'NR == 6{print;}'`
l7=`cat $1 | awk 'NR == 7{print;}'`
l8=`cat $1 | awk 'NR == 8{print;}'`
l9=`cat $1 | awk 'NR == 9{print;}'`
l10=`cat $1 | awk 'NR == 10{print;}'`
l11=`cat $1 | awk 'NR == 11{print;}'`
n1=`cat $1 | awk 'NR == 1{print;}' | wc -c`
n2=`cat $1 | awk 'NR == 2{print;}' | wc -c`
n3=`cat $1 | awk 'NR == 3{print;}' | wc -c`
n4=`cat $1 | awk 'NR == 4{print;}' | wc -c`
n5=`cat $1 | awk 'NR == 5{print;}' | wc -c`
n6=`cat $1 | awk 'NR == 6{print;}' | wc -c`
n7=`cat $1 | awk 'NR == 7{print;}' | wc -c`
n8=`cat $1 | awk 'NR == 8{print;}' | wc -c`
n9=`cat $1 | awk 'NR == 9{print;}' | wc -c`
n10=`cat $1 | awk 'NR == 10{print;}' | wc -c`
n11=`cat $1 | awk 'NR == 11{print;}' | wc -c`
n12=`cat $1 | awk 'NR == 12{print;}' | wc -c`
t1=`cat $1 | awk 'NR == 1{print;}' | grep -o "$r1" | wc -l`
t2=`cat $1 | awk 'NR == 2{print;}' | grep -o "$r2" | wc -l`
t3=`cat $1 | awk 'NR == 3{print;}' | grep -o "$r3" | wc -l`
t5=`cat $1 | awk 'NR == 5{print;}' | grep -o "$r5" | wc -l`
t7=`cat $1 | awk 'NR == 7{print;}' | grep -o "$r7" | wc -l`
t10=`cat $1 | awk 'NR == 10{print;}' | grep -o "$r10" | wc -l`
t11=`cat $1 | awk 'NR == 11{print;}' | grep -o "$r1" | wc -l`
t12=`cat $1 | awk 'NR == 4{print;}' | grep -o "$1"`
t13=`cat $1 | awk 'NR == 4{print;}' | grep -o ":+:      :+:    :+:   "`
t14=`cat $1 | awk 'NR == 6{print;}' | grep -o "   By: "`
t15=`cat $1 | awk 'NR == 6{print;}' | grep -o "+#+  +:+       +#+        "`
t16=`cat $1 | awk 'NR == 8{print;}' | grep -o "   Created: "`
t17=`cat $1 | awk 'NR == 9{print;}' | grep -o "   Updated: "`
t18=`cat $1 | awk 'NR == 8{print;}' | grep -o "#+#    #+#             "`
t19=`cat $1 | awk 'NR == 9{print;}' | grep -o "###   ########.fr       "`
m1=`expr $n1 - 1`
m2=`expr $n2 - 1`
m3=`expr $n3 - 1`
m4=`expr $n4 - 1`
m5=`expr $n5 - 1`
m6=`expr $n6 - 1`
m7=`expr $n7 - 1`
m8=`expr $n8 - 1`
m9=`expr $n9 - 1`
m10=`expr $n10 - 1`
m11=`expr $n11 - 1`
m12=`expr $n12 - 1`
if [ "$t1" -eq 0 ]
then
	echo "Ligne 1"
fi
if [ $n1 -ne 81 ]
then
	echo "Ligne 1 ($m1 != 80)"
fi
if [ "$t2" -eq 0 ]
then
	echo "Ligne 2"
fi
if [ $n2 -ne 81 ]
then
	echo "Ligne 2 ($m2 != 80)"
fi
if [ "$t3" -eq 0 ]
then
	echo "Ligne 3"
fi
if [ $n3 -ne 81 ]
then
	echo "Ligne 3 ($m3 != 80)"
fi
if [ "$t12" != "$1" ]
then
	echo "Nom du fichier [$1] ($l4)"
fi
if [ "$t13" != ":+:      :+:    :+:   " ]
then
	echo "Ligne 4 (:+:      :+:    :+:   */)"
fi
if [ $n4 -ne 81 ]
then
	echo "Ligne 4 ($m4 != 80)"
fi
if [ "$t5" -eq 0 ]
then
	echo "Ligne 5"
fi
if [ $n5 -ne 81 ]
then
	echo "Ligne 5 ($m5 != 80)"
fi
if [ "$t14" != "   By: " ]
then
	echo "Ligne 6 (/*   By: )"
fi
if [ "$t15" != "+#+  +:+       +#+        " ]
then
	echo "Ligne 6 (+#+  +:+       +#+        *)"
fi
if [ $n6 -ne 81 ]
then
	echo "Ligne 6 ($m6 != 80)"
fi
if [ "$t7" -eq 0 ]
then
	echo "Ligne 7"
fi
if [ $n7 -ne 81 ]
then
	echo "Ligne 7 ($m7 != 80)"
fi
if [ "$t16" != "   Created: " ]
then
	echo "Ligne 8 (   Created: )"
fi
if [ "$t18" != "#+#    #+#             " ]
then
	echo "Ligne 9 (#+#    #+#             )"
fi
if [ $n8 -ne 81 ]
then
	echo "Ligne 8 ($m8 != 80)"
fi
if [ "$t17" != "   Updated: " ]
then
	echo "Ligne 9 (   Updated: )"
fi
if [ "$t19" != "###   ########.fr       " ]
then
	echo "Ligne 9 (###   ########.fr       )"
fi
if [ $n9 -ne 81 ]
then
	echo "Ligne 9 ($m9 != 80)"
fi
if [ "$t10" -eq 0 ]
then
	echo "Ligne 10"
fi
if [ $n10 -ne 81 ]
then
	echo "Ligne 10 ($m10 != 80)"
fi
if [ "$t11" -eq 0 ]
then
	echo "Ligne 11"
fi
if [ $n11 -ne 81 ]
then
	echo "Ligne 11 ($m11 != 80)"
fi
if [ $n12 -ne 1 ]
then
	echo "Ligne 12 (not empty)"
fi

if [ $test2 -eq 1 ]
then
	l13=`cat $1 | awk 'NR == 13{print;}'`
	l14=`cat $1 | awk 'NR == 14{print;}'`
	MAJ=`echo $1 | tr [a-z] [A-Z] | cut -d "." -f 1`
	IFNDEF=`echo "#ifndef ${MAJ}_H"`
	DEFINE=`echo "# define ${MAJ}_H"`
	test3=`echo $l13 | grep -o "$IFNDEF"`
	test4=`echo $l14 | grep -o "$DEFINE"`
	if [ "$test3" != "${IFNDEF}" ]
	then
		echo "Bad protection (!= $IFNDEF)"
	fi
	if [ "$test4" != "${DEFINE}" ]
	then
		echo "Bad protection (!= $DEFINE)"
	fi
fi
