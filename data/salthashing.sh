#!/bin/bash

#loop through each salt, outputting the hash of each
for i in $(cat pre-salting-data.csv); do
	hash=$(printf $i | sha256sum)
	printf "$hash \n"
done
