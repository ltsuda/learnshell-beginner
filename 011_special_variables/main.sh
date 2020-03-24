#!/bin/bash

# $0 - The filename of the current script.|
# $n - The Nth argument passed to script invoked or to function called.|
# $# - The number of argument passed to script or function.|
# $@ - All arguments passed to script or function.|
# $* - All arguments passed to script or function.|
# $? - The exit status of the last command executed.|
# $$ - The process ID of the current shell. For shell scripts, this is the process ID under which they are executing.|
# $! - The process number of the last background command.|

echo "Script name: $0"
function example1() {
    for var in $*; do
        let i=i+1
        echo "The \$${i} argument is: ${var}"
    done
    echo "Total count of arguments: $#"
}
example1 We are argument

function example2() {
    echo "--- \"$*\""
    for ARG in "$*"; do
        echo $ARG
    done
    echo "--- \"\$@\""
    for ARG in "$@"; do
        echo $ARG
    done
}
example2 We are argument
