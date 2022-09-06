#!/bin/bash

for i in $(cat pre-salting-data.csv); do
	hash=$(printf $i | sha256sum)
	printf "$hash \n"
done
