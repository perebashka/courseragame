#!/bin/bash bash

function one {
  number=$(ls -1 | wc -l)
  echo "How many files are in the current directory? Type number:"
  read response
  if [[ $response -ne $number ]] 
  then
    echo "No. Try again."
  else
    checked=1
    echo "Yapp!"
  fi
  return
}

checked=0
one

while [[ $checked -eq 0 ]]
do
  one
done
