#!/bin/bash

## Traps defined at the beginning of the script so that they are inturpreted as
## signals are encountered in the course of running the program. NOTE: exit
## must then be appended to the end of the SIGINT trap so that it gracefully
## exits
trap "echo ctrl-c`d> SIGINT.txt; rm test.txt; exit" SIGINT
trap "echo killed-soft > SIGTERM.txt; rm test.txt; exit" SIGTERM
trap "echo killed-hard > SIGKILL.txt; rm test.txt; exit" SIGKILL
trap "rm test.txt; exit" EXIT

echo word > test.txt; echo "Listing contents of the current directory"
ls

## This is the loop that will keep going until a signal is sent
echo "Sleeping for 20 seconds and awaiting a signal"
sleep 20


exit
