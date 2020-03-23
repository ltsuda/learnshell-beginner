#!/bin/bash

BUFFETT="Life is like a snowball. The important thing is finding wet snow and a really long hill."
# write your code here
ISAY=$BUFFETT
CHANGE1=${ISAY[@]/snow/foot}
CHANGE2=${CHANGE1[@]//snow /}
CHANGE3=${CHANGE2[@]/finding/getting}
W_POSITION=`expr index "$CHANGE3" "w"`
ISAY=${CHANGE3::$W_POSITION+2}


# Test code - do not modify
echo "Warren Buffett said:"
echo $BUFFETT
echo "and I say:"
echo $ISAY