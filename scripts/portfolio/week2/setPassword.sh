#!/bin/bash
# typing folder name and password
read -p "type the name of the folder you would like to create " folderName
read -sp "type the password for the folder " password
echo 
#making folder
mkdir "$folderName"
#outputting hashed password to text file
echo "$password" | sha256sum > secret.txt
#moving text file to folder
mv secret.txt "$folderName"
exit 0