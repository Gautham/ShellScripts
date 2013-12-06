#!/bin/bash

a=$1;
if [[ $a != */ ]]
then
	a="$a/";
fi;
mkdir "${a}HIDDEN";
for file in ${a}.?*
do
	if [[ "$file" != *.. ]]
	then
		mv "$file" "${a}HIDDEN";
	fi;
done;