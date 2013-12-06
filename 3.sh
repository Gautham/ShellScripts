#!/bin/bash

p=`cat $1`;
q=`cat $2`;

if [[ "$p" = "$q" ]]
then
	echo "Files Are Identical!";
else
	echo "Files Are Different!";
fi;