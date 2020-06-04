#!/bin/bash
#calculator script based on: prakhargvp, (2020). Simple Calculator in Bash
#Retrieved May 23, 2020, from GeeksforGeeks https://www.geeksforgeeks.org/simple-calculator-bash/
#variable
i="1"
#while loop
while [ "$i" = "1" ]; do
#read user input
echo "Enter Two numbers: "
read a 
read b 
#enter type of operation 
echo "Enter Choice:"
echo "1. Addition"
echo "2. Subtraction"
echo "3. Multiplication"
echo "4. Division"
read ch 
#colours of output
export red="\033[31m"
export green="\033[32m"
export blue="\033[34m"
export purple="\033[35m"
export default="\033[39m"
#case statement to perform calulator operations with bc 
case $ch in
1)
res=`echo $a + $b | bc`
echo -e "${blue}Result: $res ${default}"
#if option to quit or continue in each operation
read -p "Type exit to quit or press enter to continue: " option
if [ "$option" = "exit" ]; then
i="0"
else
i="1"
fi
;;
2)
res=`echo $a - $b | bc`
echo -e "${green}Result: $res ${default}"
read -p "Type exit to quit or press enter to continue: " option
if [ "$option" = "exit" ]; then
i="0"
else
i="1"
fi
;;
3)
res=`echo $a \* $b | bc`
echo -e "${red}Result: $res ${default}"
read -p "Type exit to quit or press enter to continue: " option
if [ "$option" = "exit" ]; then
i="0"
else
i="1"
fi
;;
4)
res=`echo "scale=2; $a / $b" | bc`
echo -e "${purple}Result: $res ${default}"
read -p "Type exit to quit or press enter to continue: " option
if [ "$option" = "exit" ]; then
i="0"
else
i="1"
fi
;;
*)
i="1"
esac
done
exit 0