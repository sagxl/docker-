#!/bin/bash

FILES=$@

for FILE in $FILES 
do 
	if [ -f "$FILE"]
	then
		echo "%FILE e um arquivo comum"
	elif [ -d "$FILE" ]
	then
		echo "$FILE e um diretorio "
	else 
		echo "$FILE e alguma outra coisa"
	fi

	ls -l $FILE
done
