#!/bin/bash
#testing basic gawk functionality.  Prints the names of all directories, then a list of regular file names in working directory

script=$(basename $0)
if [ $# -ne 0 ];then
   echo "$script : format is $script"
   exit 1 
fi 

ls -l | gawk 'BEGIN {print "Directories:"}$1 ~ /^d/ {print "filename: " $9,$10,$11} END {print NR " files"}' 

sleep 2
echo 

ls -l | gawk 'BEGIN {print "Regular files: "} $1 ~ /^[^d]/ {print "filename: " $9,$10,$11} END {print NR " files"}'   #everything but directories


