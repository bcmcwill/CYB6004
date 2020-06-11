#!/usr/bin/python3
#Import modules to run script, hash library and iteration tools
#belkka (2019). Python BruteForce Script, Retrieved June 8, 2020, from StackExchange
#https://codereview.stackexchange.com/questions/211897/python-bruteforce-script
import hashlib
import itertools
#hashed password
passwordHash = "8b7df143d91c716ecfa5fc1730022f6b421b05cedee8fd52b1fc65a96030ad52"
#passwordHash = "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"
#passwordHash = "5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5"
#passwordHash = "04e77bf8f95cb3e1a36a59d1e93857c411930db646b46c218a0352e432023cf2"
#possible characters in password
alphabet = "abcdefghijklmnopqrstuvwxyz1234567890"
#possible length of password
length = 8
#for loop to iterate through characters
#belkka (2019). Python BruteForce Script, Retrieved June 8, 2020, from StackExchange
#https://codereview.stackexchange.com/questions/211897/python-bruteforce-script
for length in range(3,5):
    passwords = (''.join(word) for word in itertools.product(alphabet, repeat=length))
    #for loop to check generated password hash with original password hash
    for password in passwords:
        #hash the password
        hash = hashlib.sha256(password.encode("utf-8")).hexdigest()
        print(f"Trying password {password}:{hash}")
        #if hash is the same as password's hash
        if(hash == passwordHash):
            print(f"Password has been cracked! It was {password}")
            break