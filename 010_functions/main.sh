#!/bin/bash

function func_a {
    echo "function a"
}

function func_b {
    echo "$1"
}

function add {
    echo "$(($1 + $2))"
}

func_a
func_b "I'm function b"
add 12 56