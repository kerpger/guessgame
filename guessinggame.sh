#!/usr/bin/env bash
# guessinggame.sh
nrfiles=$(ls -al $PWD | grep -v "^[d|l|p|s|c|b|D|t]" | wc -l)
msg=("Incorrect, Your guess is too low" "Incorrect, Your guess is too high" "Correct, Congratulation!" "Please provide a number")
answ=0
sol=""

function check {
if [[ $answ -ne $nrfiles ]]
then
	[[ $answ -lt $nrfiles ]] && sol=${msg[0]} || sol=${msg[1]}
else
	sol=${msg[2]}
fi
}

while [[ $answ -ne $nrfiles ]]
do
	echo -n "Please guess, how many files are in the current directory ? "
	while read answ && [[ ! $answ =~ ^[0-9]{1,}$ ]]
	do
		echo ${msg[3]}
	done
	check
	echo $sol
done
