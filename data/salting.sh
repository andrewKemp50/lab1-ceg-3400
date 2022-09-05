#!/bin/bash

# Declare array
declare -a ARRAY

# Link filredescriptor 10 with stdin
exec 10<&0

# stdin replaced with a file supplied as a first argument
exec < $1

# Declare count
let count=0

# while loop to add each name to the array and remove duplicates
while read LINE; do

	if [ $count -eq 1 ] || [ ${#ARRAY[@]} -ge 1 ]; then

		ARRAY[${#ARRAY[@]}]=$(echo $LINE | (read -d "," var1; echo $var1;))

		if [ ${#ARRAY[@]} -ge 1 ] &&  [ ${#ARRAY[@]} -gt 1 ] &&  [ "${ARRAY[${#ARRAY[@]}-1]}" == "${ARRAY[${#ARRAY[@]}-2]}" ]; then

			delete=${ARRAY[${#ARRAY[@]}-1]}
			ARRAY=( "${ARRAY[@]/$delete}" )
			((count--))
		fi
	fi

	((count++))
done 

# restore stdin from filedescriptor 10 and close filedescriptor 10
exec 0<&10 10<&-
