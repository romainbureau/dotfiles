#!/usr/bin/env zsh

function gitprune {
    git remote prune origin
    git branch --merged | egrep -v "(^\*|master)" | xargs git branch -d
}

function gitco() {
    local branch=`git branch -vv --all | fzf --ansi --reverse`
    git checkout `echo ${branch} | awk '{print $1}' | sed 's|^remotes/origin/||'`
}

function gitlog() {
    git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' | fzf --ansi --reverse --tiebreak=index --no-sort --preview 'f() { set -- $(echo -- "$@" | grep -o "[a-f0-9]\{7\}"); [ $# -eq 0 ] || git show --color=always $1; }; f {}'
}
