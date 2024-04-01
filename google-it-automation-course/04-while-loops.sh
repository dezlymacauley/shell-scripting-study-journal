#! /usr/bin/env bash

n=1

# NOTE: There must be a space on the inside of [ ] the condition
# or your script won't work
#
# The loop will continue while n is less than or equal to five

while [ $n -le 5 ]; do
    echo "Iteration number $n"
    #(()) lets you do math with variables
    ((n+=1))
done

# This will return:
# Iteration number 1
# Iteration number 2
# Iteration number 3
# Iteration number 4
# Iteration number 5
