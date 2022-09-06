#!/bin/bash

for i in $(cat pre-salting-data.csv); do
	printf "$i \n"
done
