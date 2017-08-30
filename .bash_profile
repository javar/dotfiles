export PT_VM_MEMORY=4096

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

export CLICOLOR=1
export LSCOLORS=Exfxcxdxbxegedabagacad

export GREP_OPTIONS='--color=auto'

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

PS1='\[\033[01;32m\]\u\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# git aliases

alias g='git'
alias gs='git status'
alias ga='git add'
alias gam='git amend'
alias gci='git ci'
alias gco='git checkout'
alias gdc='git dc'
alias gdi='git di'
alias gfapu='git fapu'
alias gl='git l'
alias gla='git la'
alias gr='git rebase'
alias grc='git rebase --continue'
alias grh='git reset HEAD'
alias grhh='git reset HEAD --hard'
alias gri='git rebase -i'

alias ggpull='git pull origin $(git_current_branch)'
alias ggpush='git push origin $(git_current_branch)'

alias gignore='git update-index --assume-unchanged'
alias gunignore='git update-index --no-assume-unchanged'

function git_current_branch() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(git rev-parse --short HEAD 2> /dev/null) || return
  echo ${ref#refs/heads/}
}

function gc {
  git commit -m "$*"
}

function gcn {
  git commit -n -m "$*"
}
