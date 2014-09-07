# navigation aliases
alias ..="cd ..";
alias ...="cd ../..";

# custom aliases
alias subsize="du -h . | grep -E \"\.\/(\w*[^/])$\""
alias pss="ps -o pid,ppid,ruser,command | head -n 1;ps -A -o pid,ppid,ruser,command | grep -v grep | grep "
alias l="ls -lhFG";
alias ll="ls -alFG";
