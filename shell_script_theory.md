## Shell Script:
An executable text file with an interpreter directive
a.k.a 'shebang' directive:

#!interpreter [optional-arg]

Interpreter = path to an executable program
Optinal-arg = single arguement string

#!/bin/sh = invokes the bourne shell or other bourne compatible shells from the bin directory.
#!/bin/bash = invokes the bash shell
#!/usr/bin/env python3 = Python script directive

## How to create a shell script:
touch hello_world.sh
echo `#! /bin/bash` >> hello_world.sh
echo `echo hello world` >> hello_world.sh

## Make the script executable
ls -l hello_world.sh
Make the script executable
chmod +x hello_world.sh

## How to run the script
./hello_world.sh


