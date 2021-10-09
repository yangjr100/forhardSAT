CC=gcc
CFLAGSO= -Wall -Wextra -static -O3 -funroll-loops -fexpensive-optimizations 
CFLAGSD=  -g -O0  -pg -ggdb -Wall -Wno-missing-braces -static 

all: selectNTS #selectNTSnX

selectNTS:	selectNTS.c
			$(CC) $(CFLAGSO) selectNTS.c -lm -o selectNTS

debug:	selectNTS.c
			$(CCold) $(CFLAGSD)  selectNTS.c -lm -o selectNTS
clean:	
		rm -f selectNTS


