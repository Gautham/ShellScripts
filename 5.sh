#!/bin/bash

i=1;
while (( $i < 4 ))
do
	j=1;
	while (( $j < 4 ))
	do
		k=1;
		while (( $k < 4 ))
		do
			echo "$i$j$k";
			(( k += 1));
		done;
		(( j += 1 ));
	done;
	(( i += 1));
done;