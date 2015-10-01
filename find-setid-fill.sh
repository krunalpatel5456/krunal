#!/bin/bash
# simple script to list out the details of setuid
#  and setgid files on the system


echo " these are the setuid files i found"
echo "======================================"
find / -perm -4000 -type f exec ls -l {} \;

echo 
echo "these are the setuid files i found"
echo "======================================"
find / -perm -2000 -type f exec ls -l{} \;
