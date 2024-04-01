#! /usr/bin/env bash

# Use semicolons to execute commands on the same line
# Note this is just a way to format your code in the file,
# The output of the code will be the same.

# NOTE: There is a difference between $(date) and $line
# $() this syntax means that the value inside is a command.
# In this case it is the date command on Linux
# $variable-name refers to a variable that you created in the file

line="---------------------------------------------"

echo "Starting at: $(date)"; echo $line

echo "UPTIME"; uptime; echo $line

echo "FREE"; free; echo $line

echo "WHO"; who; echo $line

echo "Finishing at: $(date)"

#------------------------------------------------------------------------------

# NOTE: What are globs?

# globs are characters that allow us to create lists of files
# * and ? are the most common globs

# E.g. echo *.py = print out a list of all file names that end with .py

# E.g. echo c* = print out a list of all file names,
# that start with the letter c

# E.g. Give me a list of all the Python files that have 5 letters in the name.
# echo ?????.py

# This functionality is also available in Python through the glob module

#------------------------------------------------------------------------------
