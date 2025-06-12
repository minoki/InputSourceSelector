all: InputSourceSelector

InputSourceSelector: InputSourceSelector.m
	$(CC) -o $@ -Wall $< -framework Carbon -framework Foundation
