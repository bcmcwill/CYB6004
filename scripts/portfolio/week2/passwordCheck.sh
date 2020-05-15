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
#otherwise condition failed
else
echo "Access Denied"
echo "Goodbye"
fi
exit 1