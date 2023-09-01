#!/bin/bash
if [ $# -ne 2 ]; then
   echo -e "\nUsage:\t$0 START END\n"
   exit 1
fi
count=$1
while [ $count -lt $2 ]
do
rand=$((RANDOM%100))
echo "$count, $rand" >> inputFile
count=$(($count+1))
done
