#!/bin/bash
#enter week numbers
echo "Enter two week numbers: "
#read array of week numbers
read -a week
week_num=${#week[@]}
#If there aren't two arguments to the script
if (($week_num!=2)); then
#Print an error and exit
echo "Error, provide two numbers" && exit 1
fi
#For every number between the first argument and the last
for ((i="${week[0]}"; i<="${week[1]}"; i++))
do
#Create a new folder for that number
echo "Creating directory number week$i"
mkdir "week$i"
done