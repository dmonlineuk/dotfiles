#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

HISTCONTROL=ignoreboth

export PATH=$PATH:~/.local/bin/
export PATH=$PATH:~/go/bin
export GPG_TTY=$(tty)

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# can we start tmux?
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ ztmuc ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# If running tmux, drop prompt
if [ "$TERM_PROGRAM" = tmux ]; then
  PS1="> "
fi

# Intelligent history updates
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

