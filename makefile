readme.md:
	touch readme.md
	echo "#Be My Guess" > readme.md
	date >> readme.md
	echo "guessinggame contains the following lines of code: " >> readme.md
	wc -l guessinggame.sh >> readme.md

clean:
	rm readme.md
