#!/bin/bash
if [[ $1 == "-c" ]]; then
	while [[ "$USERCMD" != "exit" ]];
	do 
	echo -n "cmd>";read USERCMD
	case $USERCMD in
		test)
			echo "test Success";
		;;
		echo_list)
			for i in "one" "two" "three" ; do
				echo $i;
			done;
		;;
	esac;
	done
else
echo "use the -c flag to enter into a command line interface"
fi
