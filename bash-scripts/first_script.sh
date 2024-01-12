#!/bin/bash
# This line tells system which interpreter to use to execute the script 

echo "hello world"

# This is how to make comments in Bash
# To run a Bash file:
# `bash name_of_file.sh`

echo "First message"

name="Dezly"

echo ${name}

# Show text with all characters in Uppercase
echo ${name^^}

# Show text with all characters in lowercase
echo ${name,,}

# Show number of characters
echo ${#name}


num=57392
echo ${num}

# This will print out `739`
echo ${num:1:3}
# 1 means index 1 (which is the second number)
# 3 is the length (Return 3 numbers)

# pwd means `print working directory`
# The variable curdir will store the name of the current directory
curdir=$(pwd)
echo ${curdir}

# The round brackets can also be used to display shell commands
today=$(date)

echo ${today}

# How to add two numbers in Bash
num1=15
num2=9

echo $((${num1}+${num2}))

# NOTE: Bash won't give you decimals

echo $((${num1}/${num2})) #E.g  15/9 = 1
