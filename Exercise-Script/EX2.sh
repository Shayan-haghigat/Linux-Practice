#!/bin/bash

MINIMAL=0
MAXIMOM=0

for (( i=1 ; i < 6 ; i ++ ))
do 
	read -p "Enter the number for index ${i} : " NUMBER
	if [ $i -eq 1  ]
	then
		MINIMAL=$NUMBER
		MAXIMOM=$NUMBER
		continue
	fi
	
	if [ $NUMBER -lt $MINIMAL  ]
	then
		MINIMAL=$NUMBER
	elif [ $NUMBER -gt $MAXIMOM  ]
	then
		MAXIMOM=$NUMBER
	else
		continue
	fi
	
done


echo "The Biggest Number is ${MAXIMOM} and samllest number is ${MINIMAL}"

