#!/bin/bash
# here is a comment
# output words
echo word;
# output new line
echo ;
# output words to a file
echo word\ 1 >> file;
echo "word 2" >> file;
cat file;
echo ;

#  overwrite file contents and concatentrate file simultaniously
echo word\ 3 > file;
cat file;
# remove file
rm file;
# send error data to the output
cat file;
echo ;
# send error output to null
cat file 2> /dev/null

# if the first statement is successful the second condition executes if else
# the string stops executing
echo 1 && cat something 2> /dev/null && echo 2;
echo
# if the first statement fails then the second will be executed
cat something || echo somethingelse
echo
# if the first statement succedes then the second operation will not execute
echo something || cat somethingelse || echo another
echo
# the second statement is inconsecuential if the first statement is successful
# if both are false then all failed statements are sent to stdout

echo "&& is equivelant to if true continue"
echo "|| is equivelant to if true then stop"
echo "\ tells bash to ignore the next charicter if it is an operator"
echo word \>> file

# output redirection
cat file | grep word
echo something >> file;
echo ;

# executing bash externally
echo "echo \"Questionable or sensitive code execution\";" > bash_2.sh;
echo "echo \"mischiff managed\" > ./bash_2.sh;" >> bash_2.sh;
echo " 		file contents pre exec: "
cat bash_2.sh
echo ;
chmod +x ./bash_2.sh
./bash_2.sh
echo ;
echo "		file contents post exec:"
cat bash_2.sh
echo ;

# list files and send output to second command for filter
# this reduces errors in case there is no file named bash
ls |& grep bash

# this will produce no output because the standard error was sent
# to the second command, the second line is the longhand version
ls bash |& grep 2
ls bash 2>&1 |& grep 2
echo
# the ! word will wait for all commands to execute in the pipeline
# before sending output simply the expected output is redirected
# to take the form of its opposite
netstat |& grep DGRAM | grep -v DGRAM 
