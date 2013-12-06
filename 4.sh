#!/bin/bash

i=1;
while read line
do
	if (( ($i >=  $2) && ($i <= $3) ))
	then
		echo "$line";
	fi;
	(( i += 1 ));
done < "$1";