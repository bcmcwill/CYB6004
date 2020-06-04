#!/bin/bash
echo "Google Server IPs:"
awk 'BEGIN {
    FS=":";
    print "________________________________";
    print "| \033[34mServer Type\033[0m | \033[34mIP            \033[0m |";
}
{
    printf("| \033[33m%-11s\033[0m | \033[35m%-14s\033[0m |\n", $1, $2);
}
END {
    print("________________________________");
}' input.txt
exit 0
#This makes use of colour codes and the print statement to format the output into a table.
#Use of FS to set the field separator to ‘:’ since that’s what is separating each field in text file.