#!/bin/bash

for file in $1/*
do
	if ! [[ -s "$file" &&  -f "$file" ]]
	then
		rm "$file";
	fi;
done;