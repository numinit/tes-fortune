POSSIBLE += $(shell ls -1 | egrep -v '\.dat|README|Makefile' | sed -e 's/$$/.dat/g')

all: ${POSSIBLE}

%.dat : %
	@strfile $< $@

clean:
	rm -f *.dat

install:
	cp ./tes ./tes.dat /usr/local/share/games/fortunes
