#!/usr/bin/env bash
# guessinggame.sh

nrfiles=$(find $"$PWD" -maxdepth 1 -type b,c,f,p,l,s | wc -l )

msg=("Incorrect, Your guess is too low" "Incorrect, Your guess is too high" "Correct, Congratulation!" "Please provide a number")
answ=""
sol=""

function check {
if [[ $answ -ne $nrfiles ]]
then
	[[ $answ -lt $nrfiles ]] && sol=${msg[0]} || sol=${msg[1]}
else
	sol=${msg[2]}
fi
}

start=0

while [[ $answ -ne $nrfiles ]] || [[ $start -eq "0" ]]
do
	echo -n "Please guess, how many files are in the current directory ? "
	while read answ && [[ ! $answ =~ ^[0-9]{1,}$ ]]
	do
		echo ${msg[3]}
	done
	check
	start=1
	echo $sol
done
