all: README.md
README.md: guessinggame.sh
	echo "The Guessing Game Inc." > README.md
	echo "<br/>" >> README.md
	echo -n "Date: " >> README.md
	date >> README.md
	echo "<br/>" >> README.md
	echo -n "Lines in guessinggame.sh: " >> README.md
	cat guessinggame.sh | wc -l >> README.md

clean:
	rm README.md
