#!/bin/bash
echo "This script demonstrates how to check if a file exists, and execute"
echo "commands depending if the file exists or not"
touch somefile
if ( ls somefile > /dev/null )
then
echo somefile exists
else
echo somefile does not exist
fi
rm somefile
if ( ls somefile 2> /dev/null )
then
echo somefile exists
else
echo somefile does not exist
fi
