#!/bin/bash

echo "How many files are there in the working directory?"

nfil=$( ls -la | grep ^- | wc -l )
number=-1

function check {
	[[ ! $number  =~ ^[0-9]+$ ]] && echo "Please enter a valid number:" && return 1 || return 0
}

while [[ $nfil -ne $number ]]
do
	read number
	check && if [[ $nfil -lt $number ]]
	then
		echo "Too high! Try again:"
	elif [[ $nfil -gt $number ]]
	then
		echo "Too low! Try again:"
	fi
done
echo "Correct! Great work!"
