#! /usr/bin/env bash

# NOTE: What problem am I trying to solve

# I have five files that I want to rename:
# about.HTM
# contact.HTM
# footer.HTM
# header.HTM
# index.HTM

# I want to change the ending extension from ".HTM to .html" 

# NOTE: basename 
# This is a command that takes a file name and an extension, 
# and then returns the name of a file (excluding the extension)

for file in *.HTM; do
    # "$file" putting the variable name in doubles quotes is a good practice,
    # because some files may have spaces in their name
    name=$(basename "$file" .HTM) 
    mv "$file" "$name.html"
done

