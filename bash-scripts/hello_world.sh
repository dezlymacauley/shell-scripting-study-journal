#! /bin/bash
echo "hello world"
GREETINGS="Hello"

echo $GREETINGS

# This is how to make a comment

# `;` This is the command seperator. It seperates commands typed on the same line.
echo "Hello"; whoami
# Hello
# Patrick

# * This is the filenae expansion wildcard
# E.g ls /bin/ba*
# This will list all objects in the /bin/ directory that start with ba


# NOTE: '' Single quotes are your best bet in BASH. Interpret literally
# Always use single quotes in BASH unless you have a specific reason to not do so.
echo '$1 each'
# This will print `$1 each`

# NOTE: " " interpret literally, but evaluate metacharacters
echo "$1 each"
# This will print ` each`

# NOTE: \ escape unique character interpretation
echo "\$1 each"
# This will print `$1 each`

# WARNING: Make sure to add TWO `>>` or your message will overwrite the contents of the file. 
# echo "I am Batman" >> hello_world.sh

# NOTE: How to make a command as part of the script
HERE=$(pwd)
echo $HERE

# NOTE: How to use command line arguements
# ./hello_world.sh arg1 arg2

# BASH has two modes of operation:

# MODE 1: Batch mode (The default).
# Commands are run sequencially
# command 1; command 2
# comamand 2 only runs after command 1 is completed 

# MODE 2: Concurrent mode
# command1 & command2
# `&` is called the ampersand operator. 
# In this mode, commands run in parallel
# command1 will operate in the background and pass control to command2,
# in the foreground

# NOTE: How to schedule Jobs

# Cron = A service that runs jobs
# Crond = Interprets 'crontab files'
# Crontab = contains jobs and schedule data
# Crontab enables editing of a Crontab file

# NOTE: How to setup your laptop for cron jobs
# sudo pacman -S cronie
# export VISUAL=neovide
# export EDITOR=neovide

# crontab -e

# Job syntax:
# m h dom mon dow command
Monday: 1
Tuesday: 2
Wednesday: 3
Thursday: 4
Friday: 5
# `command ` = any command, including a call to a shell script
# m = minutes
# h = hour (24 hour format)
# dom = day of month
# mon = month

# dow = day of week
    # Monday: 1
    # Tuesday: 2
    # Wednesday: 3
    # Thursday: 4
    # Friday: 5
    # Saturday: 6
    # Sunday: 0 or 7

# Each one must have a numeric entry or an aestriks
# 30 15 * * 7 date >> sunday.txt
# This cronjob appends the current date and time to the file sunday.txt,
# every Sunday at 15:30 PM.

# NOTE: How to run cron from a script
# crontab -e
# 30 15 * * 7 date >> path/sunday.txt
# 0 2 * * 7 /cron_scripts/backup_data.sh
# 0 0 * * /cron_scripts/load_data.sh

# You can also run `crontab -l` to view the current cron jobs
