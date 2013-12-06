#!/bin/bash

Traverse() {
	a="$1";
	if [[ $a != */ ]]
	then
		a="$a/"
	fi;
	for dir in $a*/
	do
		if [[ "$a" != *.. ]] && [[ "$dir" != "$a*/" ]]
		then
			echo "$dir";
			Traverse "$dir";
		fi;
	done;
}


Traverse $1;