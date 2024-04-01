
## CLI Commands:

`Ctrl + C`  = Terminate a command that is running
`Ctrl + L`  = Clear text in the terminal
`Ctrl + A`  = Move the cursor to the beginning of a command
`Ctrl + E`  = Move the cursor to the end of a command
`Tab`       = Provide auto complete suggestions
`Ctrl + W`  = Delete a word from your terminal prompt this is quite useful when you have made a mistake but you haven't run the command yet.

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

`cd ../..`  = Go up two levels in the file structure.

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
            Random Fact: Grep stands for "global regular expression print"

`grep -i`   = Makes the search case-insentive

`cut`       = Gets a certain number of characters from each line in a file.
            cut -c 2-9 people.txt (The first 2 to 9 inclusive letters)

`cut -d`    = `cut -d ' ' -f2 people.text`
            `-d` means delimeter (what character sepeartes each field in a line)
            Let's say you had something like `Jace Sales-Rep 2024`
            You could get the year by doing this:
            `cut -d ' ' -f3 name-of-file.txt` -f3 means field three, 
            "Sales-Rep" would be field 2

`paste`     = `paste first.txt last.txt` Merge lines from different files.

`uniq`      = Filter out repeated lines in a file. `uniq pets.txt`

`wc`        = Get count of lines words, characters in file.

`more`      = Print file contents page-by-page

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
`cp`        = Copy a file

`cp -r *`   = Copy all files in a directory
            E.g. `cp -r * ~/dogs/* ~/cats/`
            This will copy all of the files in the dogs directory, 
            and paste them in the cats directory

## Getting help about a command
`man`       = View the mannual of a command. E.g. `man name-of-command`
`whatis`    = Get a quick summary of what a command does. E.g. `whatis cat`
`apropos`   = Searches the mannual page descriptions for a specified string.
            E.g. `apropos password`. Show all lines with the word password.
            E.g. `appropos password -a change password`
            This will show all lines with both the words change and password.

# Other commands
`whoami`    = Displays the user name.
`id`        = Display user ID and group ID
`uname`     = Display operating system name
            This will output `Linux`            


`uname -s -r` = Display the OS and version
                Eg. This will display `Linux 6.6.10-arch1-1`

`df -h`         = Disk free (Show disk usage for each file system)
                Note: The `-h` means give me this info in a human readable format.                
                Drive space will be shown in Gigabytes and Terabytes, instead of bytes.                

`df -h ~`       = Shows all the disks mounted on your home directory.

`ps`        = Show running processes. I haven't found the ouput of this command useful.
`top`       = Show resource usage. Stands for table of processes.
`df`        = Show info about mounted file systems.

`date`      = Print out date 
            E.g. Mon 15 Jan 15:03:35 EET 2024

`printenv SHELL`    = Displays the default shell on your computer.
                    E.g. Your output will look like `usr/bin/zsh`

`bash`      = Use the bash shell (Must be installed)
`zsh`       = Use the zsh shell (Must be installed)

`man name-of-command` = View the manual for that command.

## Viewing the contents of a file in a specific order
`sort`      = Viewing lines of a file in alphabetical order
`sort -r`   = View the lines of a file in reverse order
 
## Using the `less` command
Once you’ve accessed your content with the less command,
you can use several keyboard controls to move through the file:

    Space bar: Move forward one page

    b: Move back one page

    Down arrow: Move forward one line

    Up arrow: Move back one line

    q: Quit and return to the previous terminal window

## Authenticate and Authorize users
Permissions in Linux: Read, Write, Execute
Types of owners: Users, Group, Other (All other users on the system)

In Linux, file permissions are represented with a 10 character string.
A directory with full permission: `drwxrwxrwx`

Let's break this down:
`d`rwxrwxrwx = Directory. This first character shows the file type
For a regular file, it would be a hyphen.

d`rxw`rwxrwx = The next three characters are the user permission.
rwx means the user has Read, Write, and eXecute permissions.
If one of these permissions was missing, 
there would be a hyphen instead of the character.

drxw`rwx`rwx = The next three characters are the group permission.
drxwrwx`rwx` = The last three characters are the permissions for other users.

## How to view the permissions of a file 

`ls - l` = List files and directories, and their permisions
`ls -la` = List all files and directories (including hidden) and their permissions.

---

## How to change the permissions of a file

`chmod` = Change mode
E.g. `chmod g+w, o-r acces.txt`

Let's break this down:
The lowercase letters represent the types of owners.
u = users
g = group
o = other

E.g. `chmod g+w, o-r acces.txt`
So this means that write permissions have been added to the group,
and read permissions have been removed from other users. 

---

## How to add users to the system

`useradd` = Add user. E.g. `sudo useradd madara`

You can also delete a user with the commmand 
`userdel`

`usermod` = Modify user permissions

    -g: Sets the user’s default group, also called their primary group

    -G: Adds the user to additional groups, also called supplemental or secondary groups

## userdel

The userdel command deletes a user from the system. For example, entering sudo userdel fgarcia deletes fgarcia as a user. Be careful before you delete a user using this command.

The userdel command doesn’t delete the files in the user’s home directory unless you use the -r option. Entering sudo userdel -r fgarcia would delete fgarcia as a user and delete all files in their home directory. Before deleting any user files, you should ensure you have backups in case you need them later.

Note: Instead of deleting the user, you could consider deactivating their account with usermod -L. This prevents the user from logging in while still giving you access to their account and associated permissions. For example, if a user left an organization, this option would allow you to identify which files they have ownership over, so you could move this ownership to other users.


---

## Compression and archiving

`tar` = archive a set of files
`zip` = compress a set of files
`unzip` = extract files from a compressed zip archive

---

`history` = View previously run commands

---

## Archiving and Compression

`tar` = Archive and extract files
        Usage:
        `tar -czf name-of-archive-to-be-created.tar the-folder-you-want-to-archive`
        `-c` means create an archieve
        `-f` means from file
        `-z` will compress the file using a program called `gzip`
        -
        Note: Adding `.gz` will ensure that Windows-based programs will recognize the file type.
        "tar -czf name-of-archive-to-be-created.tar`.gz` the-folder-you-want-to-archive"

NOTE:
An achieved folder is also known as a tarball

## How to view the contents of a tarball
`tar -tf notes.tar`

## How to extract the contents of a tar file
`tar -xf name-of-archive.tar name-folder-to-create-to-store-exactrated files`

---

## NOTE: What's the difference between Zip and Tar

`zip`

zip compresses a file and then bundles it.
tar bundles a file, and then compresses it.

`zip -r notes.zip notes`
This will create a zip file

## How unzip 
`unzip notes.zip`

---

## Networking 

`hostname`  = print hostname
`hostname -i`  = print the ip adress of the hostname.
`ping`      = send packets to URL and print a reponse.
            E.g. `ping google.com` to test out the internet connection.
`ifconfig`  = Display or configure network interfaces. NOTE: Not working on my systems. Need to fix.
`curl`      = Display contents of file at a URL  
`wget`      = Download file from URL

---

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

-------------------------------------------------------------------------------

## How to redirect streams



-------------------------------------------------------------------------------
