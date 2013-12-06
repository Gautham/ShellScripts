#!/bin/bash

q=`cat $2`;
while IFS= read word
do
	if [[ "$q" = *$word* ]]
		echo "$word";
	fi;
done < $1;