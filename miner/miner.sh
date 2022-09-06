#!/bin/bash


echo "Starting this script (hopefully it is executable with chmod a+x ./miner.sh)"

VARIABLE=some_string

echo $VARIABLE

# nested for loop, iterates through each word in 
# the dictionary, then iterates through each salt from
# 0 to 999999. If it finds a hash that starts with 4
# or 5 0's, it will be outputted.
for i in $(cat ../data/dictionary); do
	for j in $(seq 0 999999); do
		# calculate hash
		hash=$(printf "$j$i" | sha256sum)

		# determine if hash is a valid coin
		if [ "${hash:0:4}" == "0000" ]; then
			printf "$hash $j$i \n"
		fi
		
		if [ "${hash:0:5}" == "00000" ]; then
			printf "$hash $j$i \n"
		fi	
	done
	printf "$i \n"
done


printf "Done!"
