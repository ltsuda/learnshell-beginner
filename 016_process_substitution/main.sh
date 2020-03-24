#!/bin/bash

##### OUTPUT
# sort file1 > sorted_file1
# sort file2 > sorted_file2
# diff sorted_file1 sorted_file2

# diff <(sort file) <(sort file2)

##### INTPUT
echo "Hello, world!" | tee >(tr '[:upper:]' '[:lower:]' > /tmp/hello.txt)