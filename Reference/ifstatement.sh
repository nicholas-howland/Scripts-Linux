#!/bin/bash
echo word > fi1
echo words > fi2
if ( diff fi1 fi2 1> /dev/null )
then cat fi2 > fi1;
else date >> logfi;
fi
rm fi1
rm fi2
