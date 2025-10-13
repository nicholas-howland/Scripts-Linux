#!/bin/bash

generate_secret() {
        echo $(( RANDOM % 10 + 1 ))
}

play_game() {
        echo "Guess my super secret number between 1 and 10 or exit with 0"
        local secret=$1
        local guess=-1
        while [ $(($guess)) -ne 0 ]; do
                read -p "guess: " guess
                if [ $(($guess)) -gt $(($secret)) ]; then
                        echo "too high"
                elif [ $(($guess)) -lt $(($secret)) ]; then
                        echo "too low"
                else
                        echo "CORRECT!"
                        local guess=0;
                fi
        done
}

main() {
        local secret=$(generate_secret)
        play_game $secret
}

main
