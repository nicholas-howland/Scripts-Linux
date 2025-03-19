#!/bin/bash
## Check if a string has been set
if [ $1 ] ; then (echo "Argument passed"); 
else (echo "No argument passed");
fi;

## Check if multiple args have been set
if [[ $1 && $2 ]]
then echo "Arguments passed"
else echo "Two arguments needed for successful execution";
fi;

## Arithmatic operations
x=$(echo 54)
y=$(echo 54)
if [[ $y -lt $x ]]; then
echo "y is less than x"
elif [[ $y -eq $x ]]; then
echo "y and x are equal"
elif [[ $y -gt $x ]]; then
echo "y is greater than x"
fi

## compare strings
#!/bin/bash

if [[ $1 == "test" ]]; then
echo "string match";
fi
