#!/bin/bash

cube() {
	echo "$(( $1 * $1 * $1 ))";
}

isArmstrong() {
	(( a = $1 % 10 ));
	(( b = $1 / 10 % 10 ));
	(( c = $1 / 100  ));
	if (( $( cube $a ) + $( cube $b ) + $( cube $c ) == $1 ))
	then
		return 1;
	else
		return 0;
	fi;
}

read -p "Input Number :  " n;

isArmstrong $n;
if (( $? == 1 ))
then
	echo "Armstrong Number";
else
	echo "Not An Armstrong Number";
fi;