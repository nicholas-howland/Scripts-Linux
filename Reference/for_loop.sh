#!/bin/bash
# If you need to do stuff in a sequence of numbers the followingg works
for i in $(seq 1 10);
do
    echo $i
done

# Alternatively if you have a list of strings the following can be done as well
list="a list of words seperated by spaces"
for i in $list;
do
    echo $i
done

# And for using a for loop using the output of a command the following is usefull

for i in $(find ./);
do
	echo "	$i"
done