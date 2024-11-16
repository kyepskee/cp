set -o vi
alias y='setxkbmap -option caps:swapescape'
alias x='setxkbmap -option'
alias v='vim'

c() {
    g++ -std=c++20 -Wall -Wextra -Wshadow -Wno-sign-conversion -Wconversion -Wfloat-equal -fsanitize=undefined,address -ggdb3 -fno-sanitize-recover -DLOCAL -DDEBUG -D_GLIBCXX_DEBUG $1.cpp -o $1
}
