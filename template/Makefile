FLAGS=-std=c++20 -Wall -Wextra -Wshadow

all: sol
	./sol <in

test: sol brute random
	./test.sh

sol: sol.cpp
	g++ $(FLAGS) -DLOCAL -g -fsanitize=undefined,address -o sol sol.cpp
fast: sol.cpp
	g++ $(FLAGS) -O2 -o sol sol.cpp

brute: sol.cpp
	g++ $(FLAGS) -DLOCAL -g -fsanitize=undefined,address -o sol sol.cpp

gen: gen.cpp
	g++ $(FLAGS) -O3 -o gen gen.cpp
