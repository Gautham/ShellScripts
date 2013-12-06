#!/bin/bash

while read -p "$> " op
do
	if [[ "$op" == "exit" ]]
	then
		exit 0;
	else
		echo "`$op`";
	fi;
done;