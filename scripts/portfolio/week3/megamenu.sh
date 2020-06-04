#!/bin/bash
#text colours
export black="\033[30m"
export red="\033[31m"
export green="\033[32m"
export brown="\033[33m"
export blue="\033[34m"
export purple="\033[35m"
export cyan="\033[36m"
export grey="\033[37m"
export default="\033[39m"
#background colours
export BLACK="\033[40m"
export RED="\033[41m"
export GREEN="\033[42m"
export BROWN="\033[43m"
export BLUE="\033[44m"
export PURPLE="\033[45m"
export CYAN="\033[46m"
export GREY="\033[47m"
export DEFAULT="\033[49m"
#location of secret.txt hashed password file
secret="/home/benm/scripts/portfolio/week3/secret.txt"
#enter password 
echo -e "${red}" 
read -sp "Enter Password: " password
#check inputted password against hash stored in text file with awk
#awk command from: Goyal, A. & Negi, P. (2018). AWK command in Unix/Linux with examples
#Retrieved May 15, 2020, from GeeksforGeeks https://www.geeksforgeeks.org/awk-command-unixlinux-examples/
check=$(echo "$password" | sha256sum -c $secret | awk '{print $2}' )
#run conditional statement if inputted password matches hash
if [[ "$check" = "OK" ]] ; then
echo
#if condition OK
echo -e "${green}Access Granted"
#display options
else
#condition failed if password wrong
echo -e "${CYAN}Access Denied Goodbye${DEFAULT}"
exit 1
fi
#while loop checking if input is 1. If not then exit.
i=1
    while [ "$i" -ne "0" ]; do
        #check exit code is equal to 0 to continue
        if [ "$?" -eq "0" ]; then
        echo -e "${blue}"
        echo "1. Create a Folder"
        echo "2. Copy a Folder"
        echo "3. Set a Password"
        echo "4. Calculator"
        echo "5. Create Week Folders"
        echo "6. Check Filenames"
        echo "7. Download a File"
        echo "8. Exit"
        #select from options to run other scripts
        echo -e "${brown}"
        read -p "Select an option: " option
        #run case statement to run selected script
        case "$option" in
        1)
        /home/benm/scripts/portfolio/week2/foldermaker.sh
        ;;
        2)
        /home/benm/scripts/portfolio/week2/foldercopier.sh
        ;;
        3)
        /home/benm/scripts/portfolio/week2/setPassword.sh
        ;;
        4)
        /home/benm/scripts/portfolio/week3/calculator.sh
        ;;
        5)
        /home/benm/scripts/portfolio/week3/megafoldermaker.sh
        ;;
        6)
        /home/benm/scripts/portfolio/week3/filenames.sh
        ;;
        7)
        /home/benm/scripts/portfolio/week3/downloader.sh
        ;;
        8)
        #exit gracefully
        i=0
        echo "Exiting"
        esac
        else i=1
        fi
    done
exit 0