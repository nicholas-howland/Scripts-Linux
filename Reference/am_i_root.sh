#!/bin/bash

if [ $(id -un) == "root" ]
then echo "I am root!"
else echo "I am not root... my username is :" $(id -un) 
fi

