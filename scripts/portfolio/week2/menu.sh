#!/bin/bash
# enter your password
read -sp "Enter Password: " password
echo
#hash inputted password and save in text file
echo $password | sha256sum > secret.txt
echo "Password Securely Stored"
#Get user to re-enter password 
read -sp "Re-enter Password: " password_check
echo
#check re-entered password with hash in text file
echo $password_check | sha256sum -c secret.txt
clear
# run conditional statement if inputted password match
if [ "$password_check" == $password ] ; then
#if condition OK
echo "Access Granted"
#display options
echo "1. Create a folder"
echo "2. Copy a folder"
echo "3. Set a password"
#select from options to run other scripts
read -p "Select an option: " option
#run case command to run selected script
case "$option" in
1)
/home/student/scripts/portfolio/week2/foldermaker.sh
;;
2)
/home/student/scripts/portfolio/week2/foldercopier.sh
;;
3)
/home/student/scripts/portfolio/week2/setPassword.sh
;;
esac
else
#otherwise condition failed
echo "Access Denied"
echo "Goodbye"
fi
exit 1