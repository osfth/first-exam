draft_README.md:
	touch README.md
	echo "# My First Exam #" >> README.md
	echo "## First Attempt ##" >> README.md
	echo "Date of README.md file creation is: " >> README.md
	date >> README.md
	echo "Count of lines in guessinggame.sh is: " >> README.md
	wc -l guessinggame.sh >> README.md

	echo "by Ondrej Kubina" >> README.md
