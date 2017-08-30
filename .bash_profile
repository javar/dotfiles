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
