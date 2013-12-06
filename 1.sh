#!/bin/bash

read -p "Input Number :  " a;
read -p "Input Number :  " b;
if (( $a > $b ))
then
	echo "$a";
else
	echo "$b";
fi;