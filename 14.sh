#!/bin/bash

select op in Create Rename Delete Copy Exit
do
	case "$op" in
		Create)	
			read -p "Enter Filename :  " f;
			touch "$f";
		;;
		Rename)
			read -p "Enter Old Filename :  " f;
			read -p "Enter New Filename :  " g;
			mv "$f" "$g";
		;;
		Delete)
			read -p "Enter Filename :  " f;
			rm "$f";
		;;
		Copy)
			read -p "Enter Source :  " f;
			read -p "Enter Destination :  " g;
			cp "$f" "$g";
		;;
		Exit)
			exit 0;
		;;
	esac;
done;