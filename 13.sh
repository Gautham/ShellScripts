#!/bin/bash

strings=
i=0;
while (( $i < 10 ))
do
	read strings[$i];
	(( i += 1));
done;

i=0;
while (( $i < 9 ))
do
	j=0;
	while (( $j < (9 - $i ) ))
	do
		if [ ${strings[$j]} \> ${strings[$(( $j + 1 ))]} ]
		then
			t=${strings[$j]};
			strings[$j]=${strings[$(( $j + 1 ))]};
			strings[$(( $j + 1 ))]="$t";
		fi;
		(( j += 1 ))
	done;
	(( i += 1))
done;

echo ${strings[@]};
