#!/bin/bash

# Usage: calculator operator numbers
# ./calculator + 1 2
# output: 3

# echo $(( ${2:-0} $1 ${3:-0} $1 ${4:-0} $1 ${5:-0} $1 ${6:-0} $1 ${7:-0} $1 ${8:-0} $1 ${9:-0} $1 ${10:-0} ))

# New usage: 
# ./calculator 1 + 2 - 1
# output: 2
echo $(( $@ ))
