#!/bin/bash

# Script to add an entry to the work log
# It does not depend on the current directory

# Check if there is an argument
if [ -z "$1" ]
then
    exit $E_MISSING_POS_PARAM
fi

# Set the log file
logFile=work_log.txt
#echo $logFile

#echo HOME $HOME
# Print the entry into the log file
echo $(date) "$1" >> $HOME/$logFile