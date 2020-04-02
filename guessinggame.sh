#!/usr/bin/env bash
# guessinggame.sh
nrfiles=$(ls $PWD | wc -l)
msg=("Incorrect, Guess higher number" "Incorrect, Guess lower number" "Correct, Congratulation!")
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
	echo -n "How many files are in the current directory ($PWD) ? "
	read answ
	check
	echo $sol
done
