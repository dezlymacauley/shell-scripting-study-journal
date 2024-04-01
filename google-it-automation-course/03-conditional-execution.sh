#! /usr/bin/env bash

# In Bash scripting an exit value of 0 means success
# This command searches for the string "127.0.0.1" in the /etc/hosts file.
# If the string is found, grep will return a success exit status (0),
# otherwise it will return a failure exit status (non-zero).
#
if grep "127.0.0.1" /etc/hosts; then
    echo "everything ok"
else
    echo "erorr! 127.0.0.1 is not in /etc/hosts"
fi

# NOTE: Test is a command that evaluates the conditons recieved and exits with 
# zero when they're true and with one when they're false

# The "test" command checks if the length of the string,
# contained in the $PATH variable is greater than zero, 
# in other words, if it's not empty.
if [ -n "$PATH" ]; then
    echo "Your path is not empty"
fi
