
## CLI Commands:

`Ctrl + C`  = Terminate a command that is running
`Ctrl + L`  = Clear text in the terminal
`Ctrl + A`  = Move the cursor to the beginning of a command
`Ctrl + E`  = Move the cursor to the end of a command
`Tab`       = Provide auto complete suggestions

`echo`      = prints out a message. E.g. `echo "I'm a hacker lol"`

`expr`      = prints out an expression. E.g. `expr 10 - 8` = 2
WARNING:    When using `expr` all terms and operators in an expression,
            are seperated by spaces.
`pwd`       = print working directory. Tells you what folder you are in
            This will print out the `absolute path`.

## What's the difference between the `absolute path` and the `relative path`?
The root is the first directory (folder) on your file system.
It is represented by `/` 

An absolute path starts from the root, 
and a relative path starts from the current directory.

`ls`        = List the files and folders in the current directory
            Hidden files and folders will NOT be shown
            Note: There is a more modern command known as `lsd`

`ls -a`     = List all files and folder in the current directory.
            Including hidden files and folders.

`tree`      = List the files and folders in the current directory,
            in a tree format.
            Note: There is a more modern tool calle `tre-command`
            
`cd`        = Change directory. E.g. `cd github/repos/`

`cd ..`     = Go up one level in the file structure. 
            E.g. If you were in the directory `cd github/repos/cool-project`,
            then typing `cd ..` will take you back to,
            the `github/repos/` folder

`cd ~`      = This will take you back to the home directory.

`cat`       = Displays the contents of a file. E.g `cat my_notes.md`
            Note: There is a more modern command known as `bat`,
            this has to be installed before you can use it.

`head`      = Displays the beginning of a file. By default 10 lines.
            To change the number of lines returned: `head -n 5`
            E.g. `head my_notes.md`

`tail`      = Displays the last 10 lines of a file.

`less`      = Return the contents of a file, one page at a time.
            E.g. `less my_noted.md`

`grep`      = Searches a specified file and returns all lines in the file,
            containing a specified
            The syntax is `grep what-you-want-to-find file_name.extension`
            E.g. `grep pizza meals_eaten.md`.
 
Another example: 
            `ls /home/analysts/reports | grep rust`
            This will return all files and directories,
            that contain the word rust.

## Understanding Piping `|`
`|` Sends the standard output of one command as standard input,
to another command for further processing.


`mkdir`     = Make a directory. Eg. `mdkir name-of-folder`
`rmkdir`    = Removes a directory. Eg. `rmdir name-of-folder`
`touch`     = Creates a file.
`rm`        = Removes, or deletes, a file
`mv`        = Move a file E.g. `mv current-file-path new-file-path`
`cp`        = Copy a path 

## Getting help about a command
`man`       = View the mannual of a command. E.g. `man name-of-command`
`whatis`    = Get a quick summary of what a command does. E.g. `whatis cat`
`apropos`   = Searches the mannual page descriptions for a specified string.
            E.g. `apropos password`. Show all lines with the word password.
            E.g. `appropos password -a change password`
            This will show all lines with both the words change and password.


## Using the `less` command
Once you’ve accessed your content with the less command,
you can use several keyboard controls to move through the file:

    Space bar: Move forward one page

    b: Move back one page

    Down arrow: Move forward one line

    Up arrow: Move back one line

    q: Quit and return to the previous terminal window

## Authenticate and Authorize users



## Terms:
OS = Operating System
CLI = Command Line Interface

Standard input = Information recieved by the OS via the command line
If the shell can interpret the request, then it will as the kernal,
for the resources it needs to execute the related task.

Standard ouput = Information returned by the OS through the Shell.
Standard error = Error messages returned by the OS through the Shell.

echo = A Linux command that outputs a specified string of text
E.g. `echo hello`

String data = Data consisting of an ordered sequence of characters
