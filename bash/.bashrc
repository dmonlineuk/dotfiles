#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# New aliases to use eza instead of ls. This may render previous alias declarations redundant
alias eza='eza --color=always --git --no-filesize --icons=always --group'
alias ll='eza -alF'
alias la='eza -A'
alias l='ls -CF'

alias kpd='kpcli --kdb=/home/dan/OneDrive/kpdb/Database.kdbx'



# can we start tmux?
if command -v tmux &> /dev/null && [ -n "$PS1" ] && [[ ! "$TERM" =~ screen ]] && [[ ! "$TERM" =~ tmux ]] && [ -z "$TMUX" ]; then
  exec tmux
fi

# oh-my-posh
export PATH=$PATH:~/.local/bin/
eval "$(oh-my-posh init bash --config ~/.cache/oh-my-posh/themes/jtracey93.omp.json)"


# scanimage templates as aliases
# needs redirect from stdout to file to work e.g. sppa4 > "this file.pdf"
alias sa5='scanimage --format=pdf -x 148.5 -y 210'
alias sa4='scanimage --format=pdf -x 210 -y 297'
