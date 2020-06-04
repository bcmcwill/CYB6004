#!/bin/bash
export black="\033[30m"
export red="\033[31m"
export green="\033[32m"
export brown="\033[33m"
export blue="\033[34m"
export purple="\033[35m"
export cyan="\033[36m"
export grey="\033[37m"
export default="\033[39m"
export BLACK="\033[40m"
export RED="\033[41m"
export GREEN="\033[42m"
export BROWN="\033[43m"
export BLUE="\033[44m"
export PURPLE="\033[45m"
export CYAN="\033[46m"
export GREY="\033[47m"
export DEFAULT="\033[49m"
#all sed statements
echo -e "${red}"
grep -r 'sed -n' ~/scripts/portfolio
#all lines that start with the letter m
echo -e "${green}"
grep -r "^m" ~/scripts/portfolio
#all lines that contain three digit numbers
echo -e "${brown}"
grep -r "[0-9][0-9][0-9]" ~/scripts/portfolio
#all echo statements with at least three words
echo -e "${blue}"
grep -r -E "(echo\s+)(\S\w[A-Za-z]+\s){3,}" ~/scripts/portfolio
#all lines that would make a good password
echo -e "${cyan}"
grep -r -E "(?=.*\S[A-Z]|[a-z]|[0-9]){17,}" ~/scripts/portfolio
exit 0