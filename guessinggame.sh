#!/usr/bin/env bash

answer=$(ls -1 | wc -l)
attempts=0

function be_my_guess() {
   read guess
   guesses=("${guesses[@]}" $guess)

   if [[ $guess -gt $answer ]]
      then echo "Your guess of $guess is too high.  Please try again."
   elif [[ $guess -lt $answer ]]
      then echo "Your guess of $guess is too low.  Please try again."
   elif [[ $guess -eq $answer ]]
      then echo "Congratulations!  $guess is the correct answer!"
   else
           echo "Your guess is out of range."
   fi
   echo "You have guessed ${#guesses[@]} time(s)."
   echo "Your previous guesses were: ${guesses[@]}"
}

echo "Welcome to 'Be My Guess'!  Please guess the number of files in this directory."

while [[ $guess -ne $answer ]]
do be_my_guess
done

#while true
#do be_my_guess
#   guesses=("${guesses[@]}" $guess)
#   echo "You have guessed ${#array[@]} time(s).  Your previous guesses were: ${guesses[@]}"
#   read guess
#   if [[ $guess -gt $answer ]]
#      then echo "Your guess of $guess is too high.  Please try again."
#   elif [[ $guess -lt $answer ]]
#      then echo "Your guess of $guess is too low.  Please try again."
#   elif [[ $guess -eq $answer ]]
#      then echo "Congratulations!  $guess is the correct answer!"
#      break
#   else
#           echo "Your guess is out of range."
#   fi
#done
