all: InputSourceSelector

InputSourceSelector: InputSourceSelector.m
	gcc -o $@ -Wall $< -framework Carbon -framework Foundation
