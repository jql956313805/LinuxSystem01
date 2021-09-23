#!/bin/sh
read a b
while [ $a -gt 9 -o $a -lt 1 -o $b -gt 9 -o $b -lt 1 ]
do
	echo "Out of range,range:1~9"
	read a b
done	
i=1
j=1
while [ $i -le $a ]
do
	while [ $j -le $b ]
	do
		echo -n "$i*$j=`expr $i \* $j` "
		j=`expr $j + 1`	
	done
	j=1
	i=`expr $i + 1`
	echo ""
done
exit 0
