README.md:
	echo "# guessingame.sh project #" > README.md
	echo "## A script based game ##" >> README.md
	echo "The project includes three files:" >> README.md
	echo "- The **guessinggame.sh** script" >> README.md
	echo "- The **makefile** which creates current *README.md*" >> README.md
	echo "- The **README.md** file" >> README.md
	echo "" >> README.md
	echo -n "The make command was running on " >> README.md
	date >> README.md
	echo "" >> README.md
	echo -n "Number of lines in the script: " >> README.md
	cat guessinggame.sh | wc -l >> README.md
