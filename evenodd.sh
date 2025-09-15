#!/usr/bin/env bash

# Check if the number is even or odd 

echo -n "Enter The Number: "
read -r n
if [ $((n % 2)) -eq 0 ]; then
	echo "$n is an Even Number"
else
	echo "$n is an Odd Number"
fi
