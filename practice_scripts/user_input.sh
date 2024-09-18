#!/bin/bash

# read command without any option.
# read name age town

# -s option to mask your input so it is not visible in the terminal.
# -t 5 option to allow the script to move on to the next command
# if input is not provided by the user.
# -p option to have a prompt for the user.

read -s -t 5 -p "Input your first name: " name
read -s -t 5 -p "Input your age: " age
read -s -t 5 -p "Input your hometown: " town

echo "My name is $name"
echo "I am $age"
echo "I am from $town"

