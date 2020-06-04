#!/bin/bash
#find echo statements with double quoted text that ends in ! in guessing game 
grep 'echo .*".*!"' ~/scripts/portfolio/week4/GuessingGame.sh
#replace the first text that matches 'Correct' to say 'Right' instead
sed -i '/echo .*".*!"/ s/Correct/Right/' ~/scripts/portfolio/week4/GuessingGame.sh
exit 0