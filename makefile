README.md: guessinggame.sh
	touch README.md
	echo "## GUESSINGGAME.SH" > README.md
	echo -n "\n Make date: " >> README.md
	date >> README.md
	echo -n "\n Number of lines in guessinggame.sh: " >> README.md
	grep -c '' guessinggame.sh >> README.md

