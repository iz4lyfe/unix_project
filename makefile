readme.md:	guessinggame.sh
	touch readme.md
	echo "# Be My Guess" > readme.md
	echo "As of `date`, guessinggame.sh contains the following lines\
	 of code: " >> readme.md
	cat guessinggame.sh | wc -l >> readme.md

clean:
	rm readme.md
