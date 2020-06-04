#!/bin/bash
#begin awk statement. Field searator of : then print top of table
#print headers in between columns with designated colour
#print underline of header with columns
#if statement to filter out bin/bash users and print first column in designated colour and 
#then following columns in designated colour
#end with table row and column dividers
#appy awk to etc/passwd file
awk 'BEGIN {
    FS=":";
    print("_____________________________________________________________________________________");
    print "| \033[34mUsername\033[0m         | \033[34mUserID\033[0m | \033[34mGroupID\033[0m | \033[34mHome\033[0m                    | \033[34mShell\033[0m             |";
    print "|__________________|________|_________|_________________________|___________________|"; 
}
{
    if ( $7 == "/bin/bash" ) printf ("| \033[33m%-16s\033[0m | \033[35m%-6s\033[0m | \033[35m%-7s\033[0m | \033[35m%-23s\033[0m | \033[35m%-17s\033[0m |\n", $1, $3, $4, $6, $7);
}
END {
    print("|__________________|________|_________|_________________________|___________________|");
}' /etc/passwd
exit 0