#!/bin/bash

NAME="John"

if [ "$NAME" = "John" ]; then
    echo "True - my name is indeed John"
fi

NAME="Bill"
if [ "$NAME" = "John" ]; then
    echo "True - my name is indeed John"
else
    echo "False"
    echo "You must mistaken me for $NAME"
fi

NAME="George"
if [ "$NAME" = "John" ]; then
    echo "True - my name is indeed John"
elif [ "$NAME" = "George" ]; then
    echo "George Harrison"
else
    echo "False"
    echo "You must mistaken me for $NAME"
fi

NAME2="MIKE"

if [[ "$NAME" = "MIKE" || "$NAME2" = "MIKE" ]]; then
    echo "NAME OR NAME2 is equal to 'MIKE'"
fi

### logical combination
# if something; then
#     command...
# fi

### case structure
mycase=1

case $mycase in
    1) echo "You selected bash";;
    2) echo "You selected pearl";;
    3) echo "You selected python";;
    4) echo "You selected c++";;
    5) exit
esac