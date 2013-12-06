#!/bin/bash

isPrime() {
	i=2;
	while (( $i <= ( $1 / $i ) ))
	do
		if (( ($1 % $i) == 0 ))
		then
			return 0;
		else
			(( i += 1 ))
		fi;
	done;
	return 1;
}

read -p "Input Number :  " n;
isPrime $n;
if (( $? == 1 ))
then
	echo "Prime";
else
	echo "Composite";
fi;