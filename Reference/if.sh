#!/bin/bash
x=$(echo 54)
y=$(echo 54)
if [[ $y -lt $x ]]; then
echo "y is less than x"
elif [[ $y -eq $x ]]; then
echo "y and x are equal"
elif [[ $y -gt $x ]]; then
echo "y is greater than x"
fi
