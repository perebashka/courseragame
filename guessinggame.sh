#!/usr/bin/env bash

function num_check {
  case $response in
      *[!0-9]*|"") 
            echo "\Incorrect value. Type number:"
            read response;;
      *) 
            checked_num=1;;
  esac
}

function one {
  number=$(ls -aF -1 | grep -v '/' | wc -l)
  echo "How many files are in the current directory? Type number:"
  read response
  
  checked_num=0
  while [[ $checked_num -eq 0 ]]
  do
    num_check
  done
  
  if [[ $response -ne $number ]] 
  then
    echo "No. Try again."
    if [[ $number -lt $response ]] 
    then
      echo "Value is lower than expected."
    else
      echo "Value is higher than expected."
    fi
    
  else
    checked=1
    echo "Congratulations! You guessed right :)"
  fi
  return
}

checked=0
one

while [[ $checked -eq 0 ]]
do
  one
done
