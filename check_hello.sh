#!/bin/bash

# Check if file argument is provided
if [ $# -eq 0 ]; then
    echo "Error: Please provide a file path as an argument"
    exit 1
fi

# Check if file exists
if [ ! -f "$1" ]; then
    echo "Error: File '$1' does not exist"
    exit 1
fi

# Check if file contains the word 'hello'
if grep -q "hello" "$1"; then
    echo "File '$1' contains the word 'hello'"
    exit 1
else
    echo "File '$1' does not contain the word 'hello'"
    exit 0
fi 