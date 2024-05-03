#!/bin/bash

# count files function
fCountFiles() {
    local vCountFiles=$(ls -l | grep "^-" | wc -l)
    echo "$vCountFiles"
}

# guessing game logic function
fGame() {
    local vCompare=$(fCountFiles)
    local vInput=-1

    echo "Be my guest and try to guess how many files are in the current directory :)"

    while [ $vInput -ne $vCompare ]; do
        read -p "Enter your guess: " vInput

        if [ $vInput -lt $vCompare ]; then
            echo "Your guess should be higher Try harder!"
        elif [ $vInput -gt $vCompare ]; then
            echo "Your guess should be lower. Try harder!"
        fi
    done

	if [ $vInput -eq 1 ]; then
		echo -e "OK! Your guess was correct.\nThere is $vCompare file in current directory."
	elif [ $vInput -ne 1 ]; then
		echo -e "OK! Your guess was correct.\nThere are $vCompare files in current directory."
	fi
}

fGame
