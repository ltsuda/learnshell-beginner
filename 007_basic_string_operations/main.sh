#!/bin/bash
STRING="this is a string"
echo ${#STRING}

SUBSTRING="hat"

# return index of any character of subtring in string
# the expression below returns "1" as it finds "t" first
expr index "$STRING" "$SUBSTRING"

POS=1
LEN=3

# returns 3 characters after position 1
echo ${STRING:$POS:$LEN}

# returns all characters after 1
echo ${STRING:1}
# returns all characters after 12
echo ${STRING:12}

########## DATA EXTRACTION ##########
DATARECORD="last=Clifford,first=Johnny Boy,state=CA"
echo $DATARECORD
COMMA1=`expr index "$DATARECORD"  ","`
echo $COMMA1 # position of the first ","

CHOP1FIELD=${DATARECORD:$COMMA1} # remove all characters before the first ","
echo $CHOP1FIELD

COMMA2=`expr index "$CHOP1FIELD"  ","`
LENGTH=`expr $COMMA2 - 6 - 1`
FIRSTNAME=${CHOP1FIELD:6:$LENGTH}
echo $FIRSTNAME

########## SUBTRING REPLACEMENT ##########
STRING="to be or not to be"
echo ${STRING[@]/be/eat} # replace first occurence of "be"
echo ${STRING[@]//be/eat} # replace all occurrences of "be"
echo ${STRING[@]// not/} # replace all occurences of " not" with empty string
echo ${STRING[@]/#to be/eat now} # replace substring if found at the start of string
echo ${STRING[@]/%be/eat} # replace subtring if found at the end of string
echo ${STRING[@]/%be/be on $(date +%Y-%m-%d)} # relace subtring if found at the end of string with a command output
