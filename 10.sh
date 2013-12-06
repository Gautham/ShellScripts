#!/bin/bash

factorial() {
	if (( $1 <= 1 ))
	then
		echo 1;
	else
		echo $(( $1 * $( factorial $(( $1 - 1 )) ) ));
	fi;
}

read -p "Input Number :  " n;
a=`factorial $n`

echo "factorial $n = $a"