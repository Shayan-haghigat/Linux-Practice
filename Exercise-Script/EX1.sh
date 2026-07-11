#!/bin/bash

read -p "Enter the number: " NUMBER

if [ $NUMBER -eq 10 ] 
then
	echo "Your input number is equal ten ."
elif [ $NUMBER -gt 10 ] 
then
	echo "Your input number is bigger than ten ."
else 
	echo "Your number is less than ten ."
fi


