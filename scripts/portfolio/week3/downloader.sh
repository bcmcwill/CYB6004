#!/bin/bash
#variable 
i="1"
#while loop
while [ "$i" = "1" ]; do
#input url for file or exit
    read -p "Please type URL of file to download or type "exit" to quit: " url
    if [ "$url" = "exit" ]; then
        i="0"
        echo "Goodbye!"
    else
#input folder to put downloaded file
    read -p "Type location for where you want to download the file to: " file
#download file
    wget $url
#making inputted directory
    mkdir $file
#moving file to created directory
#extracting file from url command from:
#StackExchange, (2013). Extract the base file name from a URL using bash
#Retrieved May 23, 2020, from StackExchange
#https://unix.stackexchange.com/questions/64432/extract-the-base-file-name-from-a-url-using-bash
    mv "${url##*/}" "$file"
    fi
done
exit 0