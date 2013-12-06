#!/bin/bash

read -p "Input Number :  " a;

if (( ($a % 2) == 1 ))
then
	echo "Odd";
else
	echo "Even";
fi;