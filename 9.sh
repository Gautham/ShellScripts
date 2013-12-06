#!/bin/bash

if [[ -f "$1" ]]
then
	rm "$1";
	mkdir "$1";
elif [[ !(-e "$1")]]
then
	mkdir "$1";
fi;
