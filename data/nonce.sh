#!/bin/bash

#loop through each hash, outputting the nonce of each
for i in $(cat ../salted-data.csv); do
	random=$(echo $(( $RANDOM % 99999 + 10000)))
	nonce="$(printf "$random$i" | sha256sum)"
        printf "$random$nonce \n"
done
