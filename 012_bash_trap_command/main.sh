#!/bin/bash

# trap <arg/function> <signal>
function booh() {
    echo "boooh"
}

trap booh SIGINT SIGTERM
echo "It's going to run until you hit Ctrl+Z"
echo "Hit Ctrl+C to be blown away!"

while true; do
    sleep 60
done
