README.md:
	echo "# guessingame.sh project #" > README.md
	echo "## A script based game ##" >> README.md
	echo "The project includes three files:" >> README.md
	echo "- The **guessinggame.sh** script" >> README.md
	echo "- The **makefile** which creates current *README.md*" >> README.md
	echo "- The **README.md** file" >> README.md
	echo "The kae command was running on $(date)" >> README.md
	echo "The script includes $(cat guessinggame.sh | wc -l) lines" >> README.md
