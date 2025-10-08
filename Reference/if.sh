#!/bin/bash
## Check if options are set on the command line, simple if exists then do things variuble check
if [[ $1 && $2 ]]; then 
echo "Two arguments passed"
elif [ $1 ]; then
echo "One argument passed";
else 
echo "Two arguments needed for successful execution";
fi;

## Comparison operator examples
x=$(echo 54)
y=$(echo 54)
if [ $y -eq $x ]; then
echo "y is equal to x"; fi
if [ $y -ne $x ]; then
echo "y is not equal to x"; fi
if [ $y -lt $x ]; then
echo "y is less than x"; fi
if [ $y -le $x ]; then
echo "y is less than or equal to x"; fi
if [ $y -gt $x ]; then
echo "y is greater than x"; fi
if [ $y -ge $x ]; then
echo "y is greater than or equal to x"; fi

## logical and operator
if [ $y -gt 1 ] &&  [ $y -lt 10 ]; then
echo "y is greater than one and less than 10"
fi
## logical or opeartor
if [ $y -gt -10 ] || [ $y -lt 10 ]; then
echo "y is greater than one and less than 10"
fi

if ![ $y -eq 10 ]; then
echo "y is not equal to 10"
fi








