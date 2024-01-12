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

# How to replicate an output
echo "item"{1..12}
# This will print out `item1 item2 item3...`

# This can be used for ip addresses
# echo 10.10.10.{1..255}

# Special parameters

if [[ $# -ne 2 ]]; then
    echo "need more parmeters"
    echo "usages needs 2"
exit 1 
# An exit code of 0 means that the script ran successfully
# Anything else means means that the script encountered an error
fi

# If the script above is not run without 2 arguements, 
# then an error message will be displayed.

# To run a Bash script with the right number of arguements.
# `bash name_of_file.sh arguement 1, arguement 2`
# E.g. `bash first_script.sh 1 2`

###############################################################################

# NOTE: How to read input information using a prompt

read -p "Type your target ip:" ip
read -p "Type the connection port" port
# -p means prompt
# The user is asked for the target ip, what they type is then read,
# and stored in the variable `ip`


echo "the target ip is ${ip}"
echo "the connection port is ${port}"

###############################################################################

