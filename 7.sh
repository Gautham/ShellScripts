#!/bin/bash

i=1;
until (( $i > 10 ))
do
	echo "$i";
	(( i += 1));	
done;