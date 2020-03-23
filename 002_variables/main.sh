#!/bin/bash
PRICE_PER_APPLE=5
echo "The price of an Apple today is : \$USD $PRICE_PER_APPLE"

MyFirstLetters=ABC
echo "The first 10 letter in the alphabet are: ${MyFirstLetters}DEFGHIJ"

greetings="Hello      world!"
echo $greetings". Now with spaces: $greetings"

FILELIST=`ls`
echo $FILELIST
FileWithTimeStamp=/tmp/file_$(/bin/date +%Y-%m-%d).txt
echo $FileWithTimeStamp